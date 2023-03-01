{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkSubpassDescription}
  alignment _ = #{alignment VkSubpassDescription}

  peek ptr = 
    VkSubpassDescription
       <$> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineBindPoint" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"inputAttachmentCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pInputAttachments" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"colorAttachmentCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pColorAttachments" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pResolveAttachments" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDepthStencilAttachment" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"preserveAttachmentCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pPreserveAttachments" ptr)

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
  rawOffset = #{offset VkSubpassDescription, flags}

instance Offset "pipelineBindPoint" VkSubpassDescription where
  rawOffset = #{offset VkSubpassDescription, pipelineBindPoint}

instance Offset "inputAttachmentCount" VkSubpassDescription where
  rawOffset = #{offset VkSubpassDescription, inputAttachmentCount}

instance Offset "pInputAttachments" VkSubpassDescription where
  rawOffset = #{offset VkSubpassDescription, pInputAttachments}

instance Offset "colorAttachmentCount" VkSubpassDescription where
  rawOffset = #{offset VkSubpassDescription, colorAttachmentCount}

instance Offset "pColorAttachments" VkSubpassDescription where
  rawOffset = #{offset VkSubpassDescription, pColorAttachments}

instance Offset "pResolveAttachments" VkSubpassDescription where
  rawOffset = #{offset VkSubpassDescription, pResolveAttachments}

instance Offset "pDepthStencilAttachment" VkSubpassDescription where
  rawOffset = #{offset VkSubpassDescription, pDepthStencilAttachment}

instance Offset "preserveAttachmentCount" VkSubpassDescription where
  rawOffset = #{offset VkSubpassDescription, preserveAttachmentCount}

instance Offset "pPreserveAttachments" VkSubpassDescription where
  rawOffset = #{offset VkSubpassDescription, pPreserveAttachments}