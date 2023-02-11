{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkImageMemoryBarrier2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAccessFlags2
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageSubresourceRange



data {-# CTYPE "vulkan/vulkan.h" "VkImageMemoryBarrier2" #-} VkImageMemoryBarrier2 =
       VkImageMemoryBarrier2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcStageMask :: VkPipelineStageFlags2
         , srcAccessMask :: VkAccessFlags2
         , dstStageMask :: VkPipelineStageFlags2
         , dstAccessMask :: VkAccessFlags2
         , oldLayout :: VkImageLayout
         , newLayout :: VkImageLayout
         , srcQueueFamilyIndex :: #{type uint32_t}
         , dstQueueFamilyIndex :: #{type uint32_t}
         , image :: VkImage
         , subresourceRange :: VkImageSubresourceRange
         }

instance Storable VkImageMemoryBarrier2 where
  sizeOf    _ = #{size      struct VkImageMemoryBarrier2}
  alignment _ = #{alignment struct VkImageMemoryBarrier2}

  peek ptr = 
    VkImageMemoryBarrier2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcStageMask" ptr)
       <*> peek (offset @"srcAccessMask" ptr)
       <*> peek (offset @"dstStageMask" ptr)
       <*> peek (offset @"dstAccessMask" ptr)
       <*> peek (offset @"oldLayout" ptr)
       <*> peek (offset @"newLayout" ptr)
       <*> peek (offset @"srcQueueFamilyIndex" ptr)
       <*> peek (offset @"dstQueueFamilyIndex" ptr)
       <*> peek (offset @"image" ptr)
       <*> peek (offset @"subresourceRange" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcStageMask" ptr val
    pokeField @"srcAccessMask" ptr val
    pokeField @"dstStageMask" ptr val
    pokeField @"dstAccessMask" ptr val
    pokeField @"oldLayout" ptr val
    pokeField @"newLayout" ptr val
    pokeField @"srcQueueFamilyIndex" ptr val
    pokeField @"dstQueueFamilyIndex" ptr val
    pokeField @"image" ptr val
    pokeField @"subresourceRange" ptr val

instance Offset "sType" VkImageMemoryBarrier2 where
  rawOffset = #{offset struct VkImageMemoryBarrier2, sType}

instance Offset "pNext" VkImageMemoryBarrier2 where
  rawOffset = #{offset struct VkImageMemoryBarrier2, pNext}

instance Offset "srcStageMask" VkImageMemoryBarrier2 where
  rawOffset = #{offset struct VkImageMemoryBarrier2, srcStageMask}

instance Offset "srcAccessMask" VkImageMemoryBarrier2 where
  rawOffset = #{offset struct VkImageMemoryBarrier2, srcAccessMask}

instance Offset "dstStageMask" VkImageMemoryBarrier2 where
  rawOffset = #{offset struct VkImageMemoryBarrier2, dstStageMask}

instance Offset "dstAccessMask" VkImageMemoryBarrier2 where
  rawOffset = #{offset struct VkImageMemoryBarrier2, dstAccessMask}

instance Offset "oldLayout" VkImageMemoryBarrier2 where
  rawOffset = #{offset struct VkImageMemoryBarrier2, oldLayout}

instance Offset "newLayout" VkImageMemoryBarrier2 where
  rawOffset = #{offset struct VkImageMemoryBarrier2, newLayout}

instance Offset "srcQueueFamilyIndex" VkImageMemoryBarrier2 where
  rawOffset = #{offset struct VkImageMemoryBarrier2, srcQueueFamilyIndex}

instance Offset "dstQueueFamilyIndex" VkImageMemoryBarrier2 where
  rawOffset = #{offset struct VkImageMemoryBarrier2, dstQueueFamilyIndex}

instance Offset "image" VkImageMemoryBarrier2 where
  rawOffset = #{offset struct VkImageMemoryBarrier2, image}

instance Offset "subresourceRange" VkImageMemoryBarrier2 where
  rawOffset = #{offset struct VkImageMemoryBarrier2, subresourceRange}

#else

module Vulkan.Types.Struct.VkImageMemoryBarrier2 where

#endif