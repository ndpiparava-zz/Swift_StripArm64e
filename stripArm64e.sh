
#use lipo -info #path((*.app/Frameworks/libswiftCore.dylib)) to check existing arch for swiftlibcore

function stripArm64e()
{
#Path to /usr/bin/lip , can find from xcode showcontent
LIPO="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/lipo"

if [[ '10.2.1' == "10."* ]]
    then

    #path to libswift inside .app file
    echo -e "/Users/npiparav/SourceCodes/Vodafone/StripArm64e/Iris.app/Frameworks/libswift*"
    for filename in /Users/npiparav/SourceCodes/Vodafone/StripArm64e/Iris.app/Frameworks/libswift*; do
    $LIPO "$filename" -remove arm64e -output $filename
    done
fi
}


stripArm64e

