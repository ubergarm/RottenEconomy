RottenEconomy-Client.zip:
	@echo Exporting client files to CurseForge / GDLauncher compatible modpack zip...
	@ln -s ./ ./overrides
	@sed -i 's/"exportMode": false/"exportMode": true/g' config/defaultsettings.json
	zip -r RottenEconomy-Client.zip manifest.json modlist.html ./overrides/config ./overrides/scripts ./overrides/resources ./overrides/README.md ./overrides/CHANGELOG.md ./overrides/LICENSE -x "./overrides/config/forge.cfg" -x "./overrides/config/forgeChunkLoading.cfg" -x "./overrides/config/mobends/*" -x "./overrides/config/voxelmap.properties" -x "*.git*" -x "*.log" -x "*.dat_old"
	@sed -i 's/"exportMode": true/"exportMode": false/g' config/defaultsettings.json
	@rm -f ./overrides
	@echo ...DONE!

config: RottenEconomy-Client.zip

RottenEconomy-Server.zip:
	@echo Zipping up configs, server side mods, server, and library files...
	@ln -s ./ ./RottenEconomy
	zip -r RottenEconomy-Server.zip ./RottenEconomy/mods ./RottenEconomy/config ./RottenEconomy/scripts ./RottenEconomy/resources ./RottenEconomy/libraries ./RottenEconomy/README.md ./RottenEconomy/CHANGELOG.md ./RottenEconomy/LICENSE ./RottenEconomy/start.sh ./RottenEconomy/server.properties.example ./RottenEconomy/forge-1.12.2-14.23.5.2855.jar ./RottenEconomy/minecraft_server.1.12.2.jar -x "./RottenEconomy/mods/OptiFine*" -x "./RottenEconomy/mods/controllable-*" -x "./RottenEconomy/mods/forgemod_VoxelMap-*" -x "./RottenEconomy/mods/MoBends*" -x "./RottenEconomy/mods/memory_repo/*" -x "./RottenEconomy/mods/OpenSecurity/*" -x "*.git*" -x "*.log" -x "*.dat_old"
	@rm -f ./RottenEconomy
	@echo ...DONE!

server: RottenEconomy-Server.zip

all: config

clean:
	@rm -f RottenEconomy-Client.zip RottenEconomy-Server.zip
