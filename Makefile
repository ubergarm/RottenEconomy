7DaysToFly-Client.zip:
	@echo Zipping up configs, resources, scripts, and client files...
	zip -r 7DaysToFly-Client.zip config scripts resources README.md CHANGELOG.md -x "*.log" -x "*.dat_old"
	@echo ...DONE!

config: 7DaysToFly-Client.zip

7DaysToFly-Server.zip:
	@echo Zipping up configs, server side mods, server, and library files...
	@ln -s ./ ./7DaysToFly
	zip -r 7DaysToFly-Server.zip ./7DaysToFly/mods ./7DaysToFly/config ./7DaysToFly/scripts ./7DaysToFly/resources ./7DaysToFly/libraries ./7DaysToFly/README.md ./7DaysToFly/CHANGELOG.md ./7DaysToFly/start.sh ./7DaysToFly/server.properties.example ./7DaysToFly/forge-1.12.2-14.23.5.2855.jar ./7DaysToFly/minecraft_server.1.12.2.jar -x "./7DaysToFly/mods/OptiFine*" -x "./7DaysToFly/mods/controllable-*" -x "./7DaysToFly/mods/forgemod_VoxelMap-*" -x "./7DaysToFly/mods/memory_repo/*" -x "./7DaysToFly/mods/OpenSecurity/*" -x "*.log" -x "*.dat_old" -x ".git*"
	@rm -f ./7DaysToFly
	@echo ...DONE!

server: 7DaysToFly-Server.zip

all: config

clean:
	@rm -f 7DaysToFly-Client.zip 7DaysToFly-Server.zip
