{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering

module Vulkan.Types.Struct.VkCommandBufferInheritanceRenderingInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkRenderingFlags
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkCommandBufferInheritanceRenderingInfoKHR" #-} VkCommandBufferInheritanceRenderingInfoKHR =
       VkCommandBufferInheritanceRenderingInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkRenderingFlags
         , viewMask :: #{type uint32_t}
         , colorAttachmentCount :: #{type uint32_t}
         , pColorAttachmentFormats :: Ptr VkFormat
         , depthAttachmentFormat :: VkFormat
         , stencilAttachmentFormat :: VkFormat
         , rasterizationSamples :: VkSampleCountFlagBits
         }

instance Storable VkCommandBufferInheritanceRenderingInfoKHR where
  sizeOf    _ = #{size      VkCommandBufferInheritanceRenderingInfoKHR}
  alignment _ = #{alignment VkCommandBufferInheritanceRenderingInfoKHR}

  peek ptr = 
    VkCommandBufferInheritanceRenderingInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"viewMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"colorAttachmentCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pColorAttachmentFormats" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthAttachmentFormat" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stencilAttachmentFormat" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rasterizationSamples" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"viewMask" ptr val
    pokeField @"colorAttachmentCount" ptr val
    pokeField @"pColorAttachmentFormats" ptr val
    pokeField @"depthAttachmentFormat" ptr val
    pokeField @"stencilAttachmentFormat" ptr val
    pokeField @"rasterizationSamples" ptr val

instance Offset "sType" VkCommandBufferInheritanceRenderingInfoKHR where
  rawOffset = #{offset VkCommandBufferInheritanceRenderingInfoKHR, sType}

instance Offset "pNext" VkCommandBufferInheritanceRenderingInfoKHR where
  rawOffset = #{offset VkCommandBufferInheritanceRenderingInfoKHR, pNext}

instance Offset "flags" VkCommandBufferInheritanceRenderingInfoKHR where
  rawOffset = #{offset VkCommandBufferInheritanceRenderingInfoKHR, flags}

instance Offset "viewMask" VkCommandBufferInheritanceRenderingInfoKHR where
  rawOffset = #{offset VkCommandBufferInheritanceRenderingInfoKHR, viewMask}

instance Offset "colorAttachmentCount" VkCommandBufferInheritanceRenderingInfoKHR where
  rawOffset = #{offset VkCommandBufferInheritanceRenderingInfoKHR, colorAttachmentCount}

instance Offset "pColorAttachmentFormats" VkCommandBufferInheritanceRenderingInfoKHR where
  rawOffset = #{offset VkCommandBufferInheritanceRenderingInfoKHR, pColorAttachmentFormats}

instance Offset "depthAttachmentFormat" VkCommandBufferInheritanceRenderingInfoKHR where
  rawOffset = #{offset VkCommandBufferInheritanceRenderingInfoKHR, depthAttachmentFormat}

instance Offset "stencilAttachmentFormat" VkCommandBufferInheritanceRenderingInfoKHR where
  rawOffset = #{offset VkCommandBufferInheritanceRenderingInfoKHR, stencilAttachmentFormat}

instance Offset "rasterizationSamples" VkCommandBufferInheritanceRenderingInfoKHR where
  rawOffset = #{offset VkCommandBufferInheritanceRenderingInfoKHR, rasterizationSamples}

#else

module Vulkan.Types.Struct.VkCommandBufferInheritanceRenderingInfoKHR where

#endif