::JAR Automoveri v0.1 by Mikimoka
::This will automatical move already compiled jar file + start paperspigot
::You still have to compile jar file with maven (we dont do that) + Change directions in this one.
::Works only in WINDOWS OS (sorry linux or mac users)

::Warning THIS WILL overwrite existing Pluginname-1.0.0.jar
::pause is used make sure that IT ACTUALLY has moved it and you can see errors.
::after that we lauch paperspigot server

::HOW TO USE?
::0. batch file must be located in your paperspigot server root folder but you can right click it send it to desktop (create shortcut)
::1. change this LINE "D:\EXPLIPSE\workspace\Pluginname\target\Pluginname-1.0.0.jar" to EXACT PATH where jar file that you want to move is.
::2. change this line "D:\paperspigot\plugins" to EXACT PATH where paperspigot PLUGINS FOLDER IS(place where we are moving that jar file)
::3. OPTIONAL: in case you want more or less ram in that paperspigot server edit these: -Xms5G -Xmx5G in that java command line
::4. Create shortcut startteri.bat shortcut to desktop (right click startteri.bat and click send to desktop (create shortcut)
::5. Compile your plugin in IntelliJ IDEA or EXPLIPSE using MAVEN and then CLICK startteri.bat

@echo off
::/y means == that we move file do not ask stubit questions like do you want overwrite existing file
move /y "D:\EXPLIPSE\workspace\Pluginname\target\Pluginname-1.0.0.jar" "D:\paperspigot\plugins"
::you can remove pause if you want but then you cant see if there is error like no jar file or wrong etc.
pause
::start paperspigot default we use 5g ram
java -Xms5G -Xmx5G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar paperclip.jar nogui
::you can remove pause but i dont like console closing if server crashes or something like cant see what caused it.
pause