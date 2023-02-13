{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h264

module Vulkan.Types.Struct.VkVideoDecodeH264PictureInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeH264PictureInfoKHR" #-} VkVideoDecodeH264PictureInfoKHR =
       VkVideoDecodeH264PictureInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pStdPictureInfo :: Ptr StdVideoDecodeH264PictureInfo
         , sliceCount :: #{type uint32_t}
         , pSliceOffsets :: Ptr #{type uint32_t}
         }

instance Storable VkVideoDecodeH264PictureInfoKHR where
  sizeOf    _ = #{size      VkVideoDecodeH264PictureInfoKHR}
  alignment _ = #{alignment VkVideoDecodeH264PictureInfoKHR}

  peek ptr = 
    VkVideoDecodeH264PictureInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pStdPictureInfo" ptr)
       <*> peek (offset @"sliceCount" ptr)
       <*> peek (offset @"pSliceOffsets" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pStdPictureInfo" ptr val
    pokeField @"sliceCount" ptr val
    pokeField @"pSliceOffsets" ptr val

instance Offset "sType" VkVideoDecodeH264PictureInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264PictureInfoKHR, sType}

instance Offset "pNext" VkVideoDecodeH264PictureInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264PictureInfoKHR, pNext}

instance Offset "pStdPictureInfo" VkVideoDecodeH264PictureInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264PictureInfoKHR, pStdPictureInfo}

instance Offset "sliceCount" VkVideoDecodeH264PictureInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264PictureInfoKHR, sliceCount}

instance Offset "pSliceOffsets" VkVideoDecodeH264PictureInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264PictureInfoKHR, pSliceOffsets}

#else

module Vulkan.Types.Struct.VkVideoDecodeH264PictureInfoKHR where

#endif