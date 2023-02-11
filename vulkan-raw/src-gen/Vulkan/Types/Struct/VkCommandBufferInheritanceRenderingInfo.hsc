{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkCommandBufferInheritanceRenderingInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkRenderingFlags
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkCommandBufferInheritanceRenderingInfo" #-} VkCommandBufferInheritanceRenderingInfo =
       VkCommandBufferInheritanceRenderingInfo
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

instance Storable VkCommandBufferInheritanceRenderingInfo where
  sizeOf    _ = #{size      struct VkCommandBufferInheritanceRenderingInfo}
  alignment _ = #{alignment struct VkCommandBufferInheritanceRenderingInfo}

  peek ptr = 
    VkCommandBufferInheritanceRenderingInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"viewMask" ptr)
       <*> peek (offset @"colorAttachmentCount" ptr)
       <*> peek (offset @"pColorAttachmentFormats" ptr)
       <*> peek (offset @"depthAttachmentFormat" ptr)
       <*> peek (offset @"stencilAttachmentFormat" ptr)
       <*> peek (offset @"rasterizationSamples" ptr)

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

instance Offset "sType" VkCommandBufferInheritanceRenderingInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceRenderingInfo, sType}

instance Offset "pNext" VkCommandBufferInheritanceRenderingInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceRenderingInfo, pNext}

instance Offset "flags" VkCommandBufferInheritanceRenderingInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceRenderingInfo, flags}

instance Offset "viewMask" VkCommandBufferInheritanceRenderingInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceRenderingInfo, viewMask}

instance Offset "colorAttachmentCount" VkCommandBufferInheritanceRenderingInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceRenderingInfo, colorAttachmentCount}

instance Offset "pColorAttachmentFormats" VkCommandBufferInheritanceRenderingInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceRenderingInfo, pColorAttachmentFormats}

instance Offset "depthAttachmentFormat" VkCommandBufferInheritanceRenderingInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceRenderingInfo, depthAttachmentFormat}

instance Offset "stencilAttachmentFormat" VkCommandBufferInheritanceRenderingInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceRenderingInfo, stencilAttachmentFormat}

instance Offset "rasterizationSamples" VkCommandBufferInheritanceRenderingInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceRenderingInfo, rasterizationSamples}

#else

module Vulkan.Types.Struct.VkCommandBufferInheritanceRenderingInfo where

#endif