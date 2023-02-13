{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering

module Vulkan.Types.Struct.VkPipelineRenderingCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineRenderingCreateInfoKHR" #-} VkPipelineRenderingCreateInfoKHR =
       VkPipelineRenderingCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , viewMask :: #{type uint32_t}
         , colorAttachmentCount :: #{type uint32_t}
         , pColorAttachmentFormats :: Ptr VkFormat
         , depthAttachmentFormat :: VkFormat
         , stencilAttachmentFormat :: VkFormat
         }

instance Storable VkPipelineRenderingCreateInfoKHR where
  sizeOf    _ = #{size      VkPipelineRenderingCreateInfoKHR}
  alignment _ = #{alignment VkPipelineRenderingCreateInfoKHR}

  peek ptr = 
    VkPipelineRenderingCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"viewMask" ptr)
       <*> peek (offset @"colorAttachmentCount" ptr)
       <*> peek (offset @"pColorAttachmentFormats" ptr)
       <*> peek (offset @"depthAttachmentFormat" ptr)
       <*> peek (offset @"stencilAttachmentFormat" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"viewMask" ptr val
    pokeField @"colorAttachmentCount" ptr val
    pokeField @"pColorAttachmentFormats" ptr val
    pokeField @"depthAttachmentFormat" ptr val
    pokeField @"stencilAttachmentFormat" ptr val

instance Offset "sType" VkPipelineRenderingCreateInfoKHR where
  rawOffset = #{offset VkPipelineRenderingCreateInfoKHR, sType}

instance Offset "pNext" VkPipelineRenderingCreateInfoKHR where
  rawOffset = #{offset VkPipelineRenderingCreateInfoKHR, pNext}

instance Offset "viewMask" VkPipelineRenderingCreateInfoKHR where
  rawOffset = #{offset VkPipelineRenderingCreateInfoKHR, viewMask}

instance Offset "colorAttachmentCount" VkPipelineRenderingCreateInfoKHR where
  rawOffset = #{offset VkPipelineRenderingCreateInfoKHR, colorAttachmentCount}

instance Offset "pColorAttachmentFormats" VkPipelineRenderingCreateInfoKHR where
  rawOffset = #{offset VkPipelineRenderingCreateInfoKHR, pColorAttachmentFormats}

instance Offset "depthAttachmentFormat" VkPipelineRenderingCreateInfoKHR where
  rawOffset = #{offset VkPipelineRenderingCreateInfoKHR, depthAttachmentFormat}

instance Offset "stencilAttachmentFormat" VkPipelineRenderingCreateInfoKHR where
  rawOffset = #{offset VkPipelineRenderingCreateInfoKHR, stencilAttachmentFormat}

#else

module Vulkan.Types.Struct.VkPipelineRenderingCreateInfoKHR where

#endif