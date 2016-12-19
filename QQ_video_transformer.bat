@echo off
@title QQ_video_transformer
set rootDir=F:\f897609953ad17bdb3204def223a3669\vodcache\
set videoDir=F:\video

for /d %%f in (%rootDir%\*) do (
	if not exist "%%f\has_transformed.txt" (
		echo %%f , ready to transform............
		cd %%f
		echo "ready to transformVideo" >> %%f\has_transformed.txt
		copy/b *.tdl %videoDir%\QQ_video_%%~nf.mp4
		echo transform suceess!
		echo "______finish one video_____" >> has_transformed.txt
	) else (
		echo current directory %%f  has been transformed, skip~!
	)
)
echo done.
pause
 