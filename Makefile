RottenEconomy-Client.zip:
	@echo Zipping up configs, resources, scripts, and client files...
	zip -r RottenEconomy-Client.zip config scripts resources README.md CHANGELOG.md LICENSE -x "./RottenEconomy/config/forge.cfg" -x "./RottenEconomy/config/forgeChunkLoading.cfg" -x ".git*" -x "*.log" -x "*.dat_old" -x "./RottenEconomy/config/defaultsettings.json"
	@echo ...DONE!

config: RottenEconomy-Client.zip

RottenEconomy-Server.zip:
	@echo Zipping up configs, server side mods, server, and library files...
	@ln -s ./ ./RottenEconomy
	zip -r RottenEconomy-Server.zip ./RottenEconomy/mods ./RottenEconomy/config ./RottenEconomy/scripts ./RottenEconomy/resources ./RottenEconomy/libraries ./RottenEconomy/README.md ./RottenEconomy/CHANGELOG.md ./RottenEconomy/LICENSE ./RottenEconomy/start.sh ./RottenEconomy/server.properties.example ./RottenEconomy/forge-1.12.2-14.23.5.2855.jar ./RottenEconomy/minecraft_server.1.12.2.jar -x "./RottenEconomy/mods/OptiFine*" -x "./RottenEconomy/mods/controllable-*" -x "./RottenEconomy/mods/forgemod_VoxelMap-*" -x "./RottenEconomy/mods/memory_repo/*" -x "./RottenEconomy/mods/OpenSecurity/*" -x "*.log" -x "*.dat_old" -x ".git*"
	@rm -f ./RottenEconomy
	@echo ...DONE!

server: RottenEconomy-Server.zip

all: config

clean:
	@rm -f RottenEconomy-Client.zip RottenEconomy-Server.zip
