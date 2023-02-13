{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Struct.VkCopyImageToBufferInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferImageCopy2



data {-# CTYPE "vulkan/vulkan.h" "VkCopyImageToBufferInfo2KHR" #-} VkCopyImageToBufferInfo2KHR =
       VkCopyImageToBufferInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcImage :: VkImage
         , srcImageLayout :: VkImageLayout
         , dstBuffer :: VkBuffer
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkBufferImageCopy2
         }

instance Storable VkCopyImageToBufferInfo2KHR where
  sizeOf    _ = #{size      VkCopyImageToBufferInfo2KHR}
  alignment _ = #{alignment VkCopyImageToBufferInfo2KHR}

  peek ptr = 
    VkCopyImageToBufferInfo2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcImage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcImageLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"regionCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcImage" ptr val
    pokeField @"srcImageLayout" ptr val
    pokeField @"dstBuffer" ptr val
    pokeField @"regionCount" ptr val
    pokeField @"pRegions" ptr val

instance Offset "sType" VkCopyImageToBufferInfo2KHR where
  rawOffset = #{offset VkCopyImageToBufferInfo2KHR, sType}

instance Offset "pNext" VkCopyImageToBufferInfo2KHR where
  rawOffset = #{offset VkCopyImageToBufferInfo2KHR, pNext}

instance Offset "srcImage" VkCopyImageToBufferInfo2KHR where
  rawOffset = #{offset VkCopyImageToBufferInfo2KHR, srcImage}

instance Offset "srcImageLayout" VkCopyImageToBufferInfo2KHR where
  rawOffset = #{offset VkCopyImageToBufferInfo2KHR, srcImageLayout}

instance Offset "dstBuffer" VkCopyImageToBufferInfo2KHR where
  rawOffset = #{offset VkCopyImageToBufferInfo2KHR, dstBuffer}

instance Offset "regionCount" VkCopyImageToBufferInfo2KHR where
  rawOffset = #{offset VkCopyImageToBufferInfo2KHR, regionCount}

instance Offset "pRegions" VkCopyImageToBufferInfo2KHR where
  rawOffset = #{offset VkCopyImageToBufferInfo2KHR, pRegions}

#else

module Vulkan.Types.Struct.VkCopyImageToBufferInfo2KHR where

#endif