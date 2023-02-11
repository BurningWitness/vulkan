{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkCopyImageToBufferInfo2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferImageCopy2



data {-# CTYPE "vulkan/vulkan.h" "VkCopyImageToBufferInfo2" #-} VkCopyImageToBufferInfo2 =
       VkCopyImageToBufferInfo2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcImage :: VkImage
         , srcImageLayout :: VkImageLayout
         , dstBuffer :: VkBuffer
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkBufferImageCopy2
         }

instance Storable VkCopyImageToBufferInfo2 where
  sizeOf    _ = #{size      struct VkCopyImageToBufferInfo2}
  alignment _ = #{alignment struct VkCopyImageToBufferInfo2}

  peek ptr = 
    VkCopyImageToBufferInfo2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcImage" ptr)
       <*> peek (offset @"srcImageLayout" ptr)
       <*> peek (offset @"dstBuffer" ptr)
       <*> peek (offset @"regionCount" ptr)
       <*> peek (offset @"pRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcImage" ptr val
    pokeField @"srcImageLayout" ptr val
    pokeField @"dstBuffer" ptr val
    pokeField @"regionCount" ptr val
    pokeField @"pRegions" ptr val

instance Offset "sType" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset struct VkCopyImageToBufferInfo2, sType}

instance Offset "pNext" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset struct VkCopyImageToBufferInfo2, pNext}

instance Offset "srcImage" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset struct VkCopyImageToBufferInfo2, srcImage}

instance Offset "srcImageLayout" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset struct VkCopyImageToBufferInfo2, srcImageLayout}

instance Offset "dstBuffer" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset struct VkCopyImageToBufferInfo2, dstBuffer}

instance Offset "regionCount" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset struct VkCopyImageToBufferInfo2, regionCount}

instance Offset "pRegions" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset struct VkCopyImageToBufferInfo2, pRegions}

#else

module Vulkan.Types.Struct.VkCopyImageToBufferInfo2 where

#endif