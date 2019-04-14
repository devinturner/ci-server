import jenkins.model.*;
import jenkins.install.*;
import java.util.logging.Logger;



def plugins = [
    'git',
    'blueocean'
]


def logger = Logger.getLogger("")
def installed = false
def initialized = false

logger.info("", plugins)

def instance = Jenkins.getInstance()
def pluginManager = instance.getPluginManager()
def updateCenter = instance.getupdateCenter()

instance.setInstallState(InstallState.INITIAL_SETUP_COMPLETE)

plugins.each { name ->
    logger.info("Checking " + name)
    if (!pluginManager.getPlugin(name)) {
        logger.info("Searching update center for " + name)
        if (!initialized) {
            updateCenter.updateAllSites()
            initialized = true
        }

        def plugin = updateCenter.getPlugin(name)
        if (plugin) {
            logger.info("Installing " + name)
            def installFuture = plugin.deploy()

            while (!installFuture.isDone()) {
                logger.info("Waiting for plugin to install: " + name)
                sleep(500)
            }
            installed = true
        }
    }
}

if (installed) {
    logger.info("Plugins installed, initializing a restart")
    instance.save()
    instance.restart()
}
