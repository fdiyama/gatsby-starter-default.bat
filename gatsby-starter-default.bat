@echo off
chcp 932
setlocal enabledelayedexpansion
:input
set /p ProjectName="�v���W�F�N�g������͂��Ă�������: "
if exist "%ProjectName%\*" (
    echo �w�肳�ꂽ�v���W�F�N�g %ProjectName% �͂��łɑ��݂��܂��B
    :confirm
    set /p UserInput="�㏑������ꍇ��'y'�A�v���W�F�N�g�����ē��͂���ꍇ��'n'�������Ă�������: "
    if /i "!UserInput!"=="y" (
        echo �㏑�����đ��s���܂�...
        gatsby new %ProjectName% https://github.com/gatsbyjs/gatsby-starter-default
        echo �v���W�F�N�g���㏑������܂����B
        pause
    ) else if /i "!UserInput!"=="n" (
        goto input
    ) else (
        echo 'y' �܂��� 'n' �𐳂������͂��Ă��������B
        goto confirm
    )
) else (
    gatsby new %ProjectName% https://github.com/gatsbyjs/gatsby-starter-default
    echo �v���W�F�N�g���쐬����܂����B
    pause
)
