@echo off
chcp 932
setlocal enabledelayedexpansion
:input
set /p ProjectName="プロジェクト名を入力してください: "
if exist "%ProjectName%\*" (
    echo 指定されたプロジェクト %ProjectName% はすでに存在します。
    :confirm
    set /p UserInput="上書きする場合は'y'、プロジェクト名を再入力する場合は'n'を押してください: "
    if /i "!UserInput!"=="y" (
        echo 上書きして続行します...
        gatsby new %ProjectName% https://github.com/gatsbyjs/gatsby-starter-default
        echo プロジェクトが上書きされました。
        pause
    ) else if /i "!UserInput!"=="n" (
        goto input
    ) else (
        echo 'y' または 'n' を正しく入力してください。
        goto confirm
    )
) else (
    gatsby new %ProjectName% https://github.com/gatsbyjs/gatsby-starter-default
    echo プロジェクトが作成されました。
    pause
)
