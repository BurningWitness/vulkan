{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h264

module Vulkan.Types.Struct.VkVideoDecodeH264ProfileInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoDecodeH264PictureLayoutFlagBitsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeH264ProfileInfoKHR" #-} VkVideoDecodeH264ProfileInfoKHR =
       VkVideoDecodeH264ProfileInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stdProfileIdc :: StdVideoH264ProfileIdc
         , pictureLayout :: VkVideoDecodeH264PictureLayoutFlagBitsKHR
         }

instance Storable VkVideoDecodeH264ProfileInfoKHR where
  sizeOf    _ = #{size      VkVideoDecodeH264ProfileInfoKHR}
  alignment _ = #{alignment VkVideoDecodeH264ProfileInfoKHR}

  peek ptr = 
    VkVideoDecodeH264ProfileInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stdProfileIdc" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pictureLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stdProfileIdc" ptr val
    pokeField @"pictureLayout" ptr val

instance Offset "sType" VkVideoDecodeH264ProfileInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264ProfileInfoKHR, sType}

instance Offset "pNext" VkVideoDecodeH264ProfileInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264ProfileInfoKHR, pNext}

instance Offset "stdProfileIdc" VkVideoDecodeH264ProfileInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264ProfileInfoKHR, stdProfileIdc}

instance Offset "pictureLayout" VkVideoDecodeH264ProfileInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264ProfileInfoKHR, pictureLayout}

#else

module Vulkan.Types.Struct.VkVideoDecodeH264ProfileInfoKHR where

#endif