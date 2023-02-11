{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkCopyBufferToImageInfo2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferImageCopy2



data {-# CTYPE "vulkan/vulkan.h" "VkCopyBufferToImageInfo2" #-} VkCopyBufferToImageInfo2 =
       VkCopyBufferToImageInfo2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcBuffer :: VkBuffer
         , dstImage :: VkImage
         , dstImageLayout :: VkImageLayout
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkBufferImageCopy2
         }

instance Storable VkCopyBufferToImageInfo2 where
  sizeOf    _ = #{size      struct VkCopyBufferToImageInfo2}
  alignment _ = #{alignment struct VkCopyBufferToImageInfo2}

  peek ptr = 
    VkCopyBufferToImageInfo2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcBuffer" ptr)
       <*> peek (offset @"dstImage" ptr)
       <*> peek (offset @"dstImageLayout" ptr)
       <*> peek (offset @"regionCount" ptr)
       <*> peek (offset @"pRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcBuffer" ptr val
    pokeField @"dstImage" ptr val
    pokeField @"dstImageLayout" ptr val
    pokeField @"regionCount" ptr val
    pokeField @"pRegions" ptr val

instance Offset "sType" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset struct VkCopyBufferToImageInfo2, sType}

instance Offset "pNext" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset struct VkCopyBufferToImageInfo2, pNext}

instance Offset "srcBuffer" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset struct VkCopyBufferToImageInfo2, srcBuffer}

instance Offset "dstImage" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset struct VkCopyBufferToImageInfo2, dstImage}

instance Offset "dstImageLayout" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset struct VkCopyBufferToImageInfo2, dstImageLayout}

instance Offset "regionCount" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset struct VkCopyBufferToImageInfo2, regionCount}

instance Offset "pRegions" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset struct VkCopyBufferToImageInfo2, pRegions}

#else

module Vulkan.Types.Struct.VkCopyBufferToImageInfo2 where

#endif