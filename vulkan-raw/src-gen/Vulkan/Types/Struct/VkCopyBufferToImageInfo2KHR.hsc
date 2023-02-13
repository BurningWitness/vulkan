{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Struct.VkCopyBufferToImageInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferImageCopy2



data {-# CTYPE "vulkan/vulkan.h" "VkCopyBufferToImageInfo2KHR" #-} VkCopyBufferToImageInfo2KHR =
       VkCopyBufferToImageInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcBuffer :: VkBuffer
         , dstImage :: VkImage
         , dstImageLayout :: VkImageLayout
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkBufferImageCopy2
         }

instance Storable VkCopyBufferToImageInfo2KHR where
  sizeOf    _ = #{size      VkCopyBufferToImageInfo2KHR}
  alignment _ = #{alignment VkCopyBufferToImageInfo2KHR}

  peek ptr = 
    VkCopyBufferToImageInfo2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstImage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstImageLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"regionCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcBuffer" ptr val
    pokeField @"dstImage" ptr val
    pokeField @"dstImageLayout" ptr val
    pokeField @"regionCount" ptr val
    pokeField @"pRegions" ptr val

instance Offset "sType" VkCopyBufferToImageInfo2KHR where
  rawOffset = #{offset VkCopyBufferToImageInfo2KHR, sType}

instance Offset "pNext" VkCopyBufferToImageInfo2KHR where
  rawOffset = #{offset VkCopyBufferToImageInfo2KHR, pNext}

instance Offset "srcBuffer" VkCopyBufferToImageInfo2KHR where
  rawOffset = #{offset VkCopyBufferToImageInfo2KHR, srcBuffer}

instance Offset "dstImage" VkCopyBufferToImageInfo2KHR where
  rawOffset = #{offset VkCopyBufferToImageInfo2KHR, dstImage}

instance Offset "dstImageLayout" VkCopyBufferToImageInfo2KHR where
  rawOffset = #{offset VkCopyBufferToImageInfo2KHR, dstImageLayout}

instance Offset "regionCount" VkCopyBufferToImageInfo2KHR where
  rawOffset = #{offset VkCopyBufferToImageInfo2KHR, regionCount}

instance Offset "pRegions" VkCopyBufferToImageInfo2KHR where
  rawOffset = #{offset VkCopyBufferToImageInfo2KHR, pRegions}

#else

module Vulkan.Types.Struct.VkCopyBufferToImageInfo2KHR where

#endif