{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPipelineRenderingCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineRenderingCreateInfo" #-} VkPipelineRenderingCreateInfo =
       VkPipelineRenderingCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , viewMask :: #{type uint32_t}
         , colorAttachmentCount :: #{type uint32_t}
         , pColorAttachmentFormats :: Ptr VkFormat
         , depthAttachmentFormat :: VkFormat
         , stencilAttachmentFormat :: VkFormat
         }

instance Storable VkPipelineRenderingCreateInfo where
  sizeOf    _ = #{size      VkPipelineRenderingCreateInfo}
  alignment _ = #{alignment VkPipelineRenderingCreateInfo}

  peek ptr = 
    VkPipelineRenderingCreateInfo
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

instance Offset "sType" VkPipelineRenderingCreateInfo where
  rawOffset = #{offset VkPipelineRenderingCreateInfo, sType}

instance Offset "pNext" VkPipelineRenderingCreateInfo where
  rawOffset = #{offset VkPipelineRenderingCreateInfo, pNext}

instance Offset "viewMask" VkPipelineRenderingCreateInfo where
  rawOffset = #{offset VkPipelineRenderingCreateInfo, viewMask}

instance Offset "colorAttachmentCount" VkPipelineRenderingCreateInfo where
  rawOffset = #{offset VkPipelineRenderingCreateInfo, colorAttachmentCount}

instance Offset "pColorAttachmentFormats" VkPipelineRenderingCreateInfo where
  rawOffset = #{offset VkPipelineRenderingCreateInfo, pColorAttachmentFormats}

instance Offset "depthAttachmentFormat" VkPipelineRenderingCreateInfo where
  rawOffset = #{offset VkPipelineRenderingCreateInfo, depthAttachmentFormat}

instance Offset "stencilAttachmentFormat" VkPipelineRenderingCreateInfo where
  rawOffset = #{offset VkPipelineRenderingCreateInfo, stencilAttachmentFormat}

#else

module Vulkan.Types.Struct.VkPipelineRenderingCreateInfo where

#endif