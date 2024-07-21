# Portable Stable Diffusion
This is a portable version based on the [Stable Diffusion by AUTOMATIC1111](https://github.com/AUTOMATIC1111/stable-diffusion-webui) version
inspired of [serpotapov/stable-diffusion-portable](https://github.com/serpotapov/stable-diffusion-portable)
# What is difference? 
This version uses [uv](https://github.com/astral-sh/uv), that can install packages much quickier than default pip. For example, [serpotapov/stable-diffusion-portable](https://github.com/serpotapov/stable-diffusion-portable) or default version install torch several minutes, this one do it several seconds!

----

## Running on Windows
1. Download [SD Portable](https://github.com/krakotay/stable-diffusion-portable/archive/refs/heads/main.zip)
2. Unzip the `stable-diffusion-portable-main` folder anywhere you want</br>
 Root directory preferred, and path shouldn't have spaces and Cyrillic</br>
 Example: `D:\stable-diffusion-portable-main`</br>
3. Run `run.cmd` and wait for a couple seconds
4. When you see the `models` folder appeared (while cmd working),</br>
 place any model (for example [Deliberate](https://huggingface.co/XpucT/Deliberate/resolve/main/Deliberate_v6.safetensors)) in the `...\models\Stable-diffusion` directory</br>
 Example of a full path: </br>
 `D:\stable-diffusion-portable-main\models\Stable-diffusion\Deliberate_v6.safetensors`
5. After complete download your browser will run Stable Diffusion</br>
 The main launcher for the future will be the `webui-user.bat` file

*P.S. Due to Windows specifics, any attempt to block network access may crash the install/update processes, so you will have to rerun .bat again.*
