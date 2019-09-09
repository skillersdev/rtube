<?php

           $targetPath = "upload";

    if($_FILES){    

             $filename = $_FILES['Filedata']['name'];   
             $tmp = explode('.', $filename);
             $extension=end($tmp);
             $newfilename=rand().date('Y_m_d_h_i_s') .".".$extension;
             $temp_path=$targetPath."/";
             $destination =$temp_path.$newfilename;         
             if(move_uploaded_file( $_FILES['Filedata']['tmp_name'] , $destination )){
                  // return $destination;
                  echo $destination;
                  die;
             }
        }
