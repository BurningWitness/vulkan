{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h265

module Vulkan.Types.Struct.VkVideoDecodeH265PictureInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeH265PictureInfoKHR" #-} VkVideoDecodeH265PictureInfoKHR =
       VkVideoDecodeH265PictureInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pStdPictureInfo :: Ptr StdVideoDecodeH265PictureInfo
         , sliceSegmentCount :: #{type uint32_t}
         , pSliceSegmentOffsets :: Ptr #{type uint32_t}
         }

instance Storable VkVideoDecodeH265PictureInfoKHR where
  sizeOf    _ = #{size      struct VkVideoDecodeH265PictureInfoKHR}
  alignment _ = #{alignment struct VkVideoDecodeH265PictureInfoKHR}

  peek ptr = 
    VkVideoDecodeH265PictureInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pStdPictureInfo" ptr)
       <*> peek (offset @"sliceSegmentCount" ptr)
       <*> peek (offset @"pSliceSegmentOffsets" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pStdPictureInfo" ptr val
    pokeField @"sliceSegmentCount" ptr val
    pokeField @"pSliceSegmentOffsets" ptr val

instance Offset "sType" VkVideoDecodeH265PictureInfoKHR where
  rawOffset = #{offset struct VkVideoDecodeH265PictureInfoKHR, sType}

instance Offset "pNext" VkVideoDecodeH265PictureInfoKHR where
  rawOffset = #{offset struct VkVideoDecodeH265PictureInfoKHR, pNext}

instance Offset "pStdPictureInfo" VkVideoDecodeH265PictureInfoKHR where
  rawOffset = #{offset struct VkVideoDecodeH265PictureInfoKHR, pStdPictureInfo}

instance Offset "sliceSegmentCount" VkVideoDecodeH265PictureInfoKHR where
  rawOffset = #{offset struct VkVideoDecodeH265PictureInfoKHR, sliceSegmentCount}

instance Offset "pSliceSegmentOffsets" VkVideoDecodeH265PictureInfoKHR where
  rawOffset = #{offset struct VkVideoDecodeH265PictureInfoKHR, pSliceSegmentOffsets}

#else

module Vulkan.Types.Struct.VkVideoDecodeH265PictureInfoKHR where

#endif