echo "====copy bins===="

#Generate out bin directory
out_time=`date +%m-%d-%H-%M`
bin_out_path=$(pwd)/out_bin/${out_time}/
if [  -d "$bin_out_path" ];then
	:
else
	mkdir -p $bin_out_path
fi

echo "===out path: $bin_out_path"

project=msm8953_64

#copy img files
cp $(pwd)/out/target/product/$project/boot.img $bin_out_path/ -v
cp $(pwd)/out/target/product/$project/recovery.img $bin_out_path/ -v
cp $(pwd)/out/target/product/$project/recovery.id $bin_out_path/ -v
cp $(pwd)/out/target/product/$project/splash.img $bin_out_path/ -v
cp $(pwd)/out/target/product/$project/system.img $bin_out_path/ -v
cp $(pwd)/out/target/product/$project/userdata.img $bin_out_path/ -v
cp $(pwd)/out/target/product/$project/persist.img $bin_out_path/ -v
cp $(pwd)/out/target/product/$project/cache.img $bin_out_path/ -v
cp $(pwd)/out/target/product/$project/mdtp.img $bin_out_path/ -v
cp $(pwd)/out/target/product/$project/android-info.txt $bin_out_path/ -v
cp $(pwd)/out/target/product/$project/emmc_appsboot.mbn $bin_out_path/ -v
cp $(pwd)/out/target/product/$project/installed-files.txt $bin_out_path/ -v
#cp $(pwd)/out/target/product/lcsh8783_ttb_m/MBR $bin_out_path/ -v
#cp $(pwd)/out/target/product/lcsh8783_ttb_m/EBR1 $bin_out_path/ -v
#cp $(pwd)/out/target/product/lcsh8783_ttb_m/EBR2 $bin_out_path/ -v


#copy db info
#dbInfo_dir=$(pwd)/out/target/product/$project/system/etc/mddb
#cp  $dbInfo_dir/BPLGUInfoCustomAppSrcP*  $bin_out_path -v
#cp  $dbInfo_dir/DbgInfo*  $bin_out_path -v
#cp  $dbInfo_dir/*.elf  $bin_out_path -v

#copy apdb
#apdb_dir=$(pwd)/out/target/product/$project/obj/CGEN
#cp  $apdb_dir/APDB_MT6735_S01*  $bin_out_path -v

#cd $(pwd)
#add for bakup bin code
#otapackageDir=$(pwd)/out/target/product/$project
#cp $otapackageDir/*factory_update.zip $bin_out_path -v
#cp $otapackageDir/obj/PACKAGING/target_files_intermediates/full_tb6735p1_64*.zip $bin_out_path -v

echo "=====end of copy ====="

#gen check sum file start
#cp $(pwd)/CheckSum_Gen.exe $bin_out_path -v
#cd $bin_out_path
#wine CheckSum_Gen.exe -md5 . 
#rm $bin_out_path/CheckSum_Gen.exe
#gen check sum file end
