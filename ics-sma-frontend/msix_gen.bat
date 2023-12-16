
: msix_gen.bat

: Generate a MSIX file

call flutter clean
call flutter pub get

if not exist "publish" (
    call mkdir publish
)

: See pub.dev/packages/msix for options
call dart run msix:publish --version 1.0.1.2
