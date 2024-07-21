@echo off
if exist aut111.exe (
    echo Unpaching...
    start /wait aut111.exe -y
    del aut111.exe
)
for %%i in (1 2 3 4 5 6) do (
    if exist aut111.7z.00%%i (
        del aut111.7z.00%%i
    )
)
if exist README.md (
    del README.md
)

set f=.\git\

set PATH=%PATH%;%cd%\git\cmd
git init .
git remote remove origin
git remote add origin https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
git pull origin master

if not exist venv (
    "%f%uv.exe" venv -p .\python\python.exe venv --seed
)

call venv\Scripts\activate.bat

"%f%uv.exe" pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121 --no-cache
"%f%uv.exe" pip install -r requirements.txt --no-cache

if exist webui-user1.bat (
    del webui-user.bat
    ren webui-user1.bat webui-user.bat
)

echo Launch webui.bat...
del run.bat & call webui-user.bat
