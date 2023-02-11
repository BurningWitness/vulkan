{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSubpassDescription where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Enum.VkSubpassDescriptionFlags
import Vulkan.Types.Struct.VkAttachmentReference



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassDescription" #-} VkSubpassDescription =
       VkSubpassDescription
         { flags :: VkSubpassDescriptionFlags
         , pipelineBindPoint :: VkPipelineBindPoint -- ^ Must be VK_PIPELINE_BIND_POINT_GRAPHICS for now
         , inputAttachmentCount :: #{type uint32_t}
         , pInputAttachments :: Ptr VkAttachmentReference
         , colorAttachmentCount :: #{type uint32_t}
         , pColorAttachments :: Ptr VkAttachmentReference
         , pResolveAttachments :: Ptr VkAttachmentReference
         , pDepthStencilAttachment :: Ptr VkAttachmentReference
         , preserveAttachmentCount :: #{type uint32_t}
         , pPreserveAttachments :: Ptr #{type uint32_t}
         }

instance Storable VkSubpassDescription where
  sizeOf    _ = #{size      struct VkSubpassDescription}
  alignment _ = #{alignment struct VkSubpassDescription}

  peek ptr = 
    VkSubpassDescription
       <$> peek (offset @"flags" ptr)
       <*> peek (offset @"pipelineBindPoint" ptr)
       <*> peek (offset @"inputAttachmentCount" ptr)
       <*> peek (offset @"pInputAttachments" ptr)
       <*> peek (offset @"colorAttachmentCount" ptr)
       <*> peek (offset @"pColorAttachments" ptr)
       <*> peek (offset @"pResolveAttachments" ptr)
       <*> peek (offset @"pDepthStencilAttachment" ptr)
       <*> peek (offset @"preserveAttachmentCount" ptr)
       <*> peek (offset @"pPreserveAttachments" ptr)

  poke ptr val = do
    pokeField @"flags" ptr val
    pokeField @"pipelineBindPoint" ptr val
    pokeField @"inputAttachmentCount" ptr val
    pokeField @"pInputAttachments" ptr val
    pokeField @"colorAttachmentCount" ptr val
    pokeField @"pColorAttachments" ptr val
    pokeField @"pResolveAttachments" ptr val
    pokeField @"pDepthStencilAttachment" ptr val
    pokeField @"preserveAttachmentCount" ptr val
    pokeField @"pPreserveAttachments" ptr val

instance Offset "flags" VkSubpassDescription where
  rawOffset = #{offset struct VkSubpassDescription, flags}

instance Offset "pipelineBindPoint" VkSubpassDescription where
  rawOffset = #{offset struct VkSubpassDescription, pipelineBindPoint}

instance Offset "inputAttachmentCount" VkSubpassDescription where
  rawOffset = #{offset struct VkSubpassDescription, inputAttachmentCount}

instance Offset "pInputAttachments" VkSubpassDescription where
  rawOffset = #{offset struct VkSubpassDescription, pInputAttachments}

instance Offset "colorAttachmentCount" VkSubpassDescription where
  rawOffset = #{offset struct VkSubpassDescription, colorAttachmentCount}

instance Offset "pColorAttachments" VkSubpassDescription where
  rawOffset = #{offset struct VkSubpassDescription, pColorAttachments}

instance Offset "pResolveAttachments" VkSubpassDescription where
  rawOffset = #{offset struct VkSubpassDescription, pResolveAttachments}

instance Offset "pDepthStencilAttachment" VkSubpassDescription where
  rawOffset = #{offset struct VkSubpassDescription, pDepthStencilAttachment}

instance Offset "preserveAttachmentCount" VkSubpassDescription where
  rawOffset = #{offset struct VkSubpassDescription, preserveAttachmentCount}

instance Offset "pPreserveAttachments" VkSubpassDescription where
  rawOffset = #{offset struct VkSubpassDescription, pPreserveAttachments}