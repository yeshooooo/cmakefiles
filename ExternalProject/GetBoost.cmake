
# 根据平台选择下载URL和HASH
if(WIN32)
  set(BOOST_URL "https://archives.boost.io/release/1.72.0/source/boost_1_72_0.zip")
  set(BOOST_HASH "8c20440aaba21dd963c0f7149517445f50c62ce4eb689df2b5544cc89e6e621e")
else()
  set(BOOST_URL "https://archives.boost.io/release/1.72.0/source/boost_1_72_0.tar.gz")
  set(BOOST_HASH "c66e88d5786f2ca4dbebb14e06b566fb642a1a6947ad8cc9091f9f445134143f")
  
endif()

# 添加更多平台特定的配置
if(WIN32)
    # Windows特定配置
    set(BOOST_BOOTSTRAP_COMMAND "bootstrap.bat")
    set(BOOST_B2_COMMAND "b2.exe")
else()
    # Linux特定配置
    set(BOOST_BOOTSTRAP_COMMAND "./bootstrap.sh")
    set(BOOST_B2_COMMAND "./b2")
endif()
