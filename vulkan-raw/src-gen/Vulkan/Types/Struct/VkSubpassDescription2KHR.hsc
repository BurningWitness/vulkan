{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Struct.VkSubpassDescription2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSubpassDescriptionFlags
import Vulkan.Types.Struct.VkAttachmentReference2



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassDescription2KHR" #-} VkSubpassDescription2KHR =
       VkSubpassDescription2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkSubpassDescriptionFlags
         , pipelineBindPoint :: VkPipelineBindPoint
         , viewMask :: #{type uint32_t}
         , inputAttachmentCount :: #{type uint32_t}
         , pInputAttachments :: Ptr VkAttachmentReference2
         , colorAttachmentCount :: #{type uint32_t}
         , pColorAttachments :: Ptr VkAttachmentReference2
         , pResolveAttachments :: Ptr VkAttachmentReference2
         , pDepthStencilAttachment :: Ptr VkAttachmentReference2
         , preserveAttachmentCount :: #{type uint32_t}
         , pPreserveAttachments :: Ptr #{type uint32_t}
         }

instance Storable VkSubpassDescription2KHR where
  sizeOf    _ = #{size      VkSubpassDescription2KHR}
  alignment _ = #{alignment VkSubpassDescription2KHR}

  peek ptr = 
    VkSubpassDescription2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"pipelineBindPoint" ptr)
       <*> peek (offset @"viewMask" ptr)
       <*> peek (offset @"inputAttachmentCount" ptr)
       <*> peek (offset @"pInputAttachments" ptr)
       <*> peek (offset @"colorAttachmentCount" ptr)
       <*> peek (offset @"pColorAttachments" ptr)
       <*> peek (offset @"pResolveAttachments" ptr)
       <*> peek (offset @"pDepthStencilAttachment" ptr)
       <*> peek (offset @"preserveAttachmentCount" ptr)
       <*> peek (offset @"pPreserveAttachments" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"pipelineBindPoint" ptr val
    pokeField @"viewMask" ptr val
    pokeField @"inputAttachmentCount" ptr val
    pokeField @"pInputAttachments" ptr val
    pokeField @"colorAttachmentCount" ptr val
    pokeField @"pColorAttachments" ptr val
    pokeField @"pResolveAttachments" ptr val
    pokeField @"pDepthStencilAttachment" ptr val
    pokeField @"preserveAttachmentCount" ptr val
    pokeField @"pPreserveAttachments" ptr val

instance Offset "sType" VkSubpassDescription2KHR where
  rawOffset = #{offset VkSubpassDescription2KHR, sType}

instance Offset "pNext" VkSubpassDescription2KHR where
  rawOffset = #{offset VkSubpassDescription2KHR, pNext}

instance Offset "flags" VkSubpassDescription2KHR where
  rawOffset = #{offset VkSubpassDescription2KHR, flags}

instance Offset "pipelineBindPoint" VkSubpassDescription2KHR where
  rawOffset = #{offset VkSubpassDescription2KHR, pipelineBindPoint}

instance Offset "viewMask" VkSubpassDescription2KHR where
  rawOffset = #{offset VkSubpassDescription2KHR, viewMask}

instance Offset "inputAttachmentCount" VkSubpassDescription2KHR where
  rawOffset = #{offset VkSubpassDescription2KHR, inputAttachmentCount}

instance Offset "pInputAttachments" VkSubpassDescription2KHR where
  rawOffset = #{offset VkSubpassDescription2KHR, pInputAttachments}

instance Offset "colorAttachmentCount" VkSubpassDescription2KHR where
  rawOffset = #{offset VkSubpassDescription2KHR, colorAttachmentCount}

instance Offset "pColorAttachments" VkSubpassDescription2KHR where
  rawOffset = #{offset VkSubpassDescription2KHR, pColorAttachments}

instance Offset "pResolveAttachments" VkSubpassDescription2KHR where
  rawOffset = #{offset VkSubpassDescription2KHR, pResolveAttachments}

instance Offset "pDepthStencilAttachment" VkSubpassDescription2KHR where
  rawOffset = #{offset VkSubpassDescription2KHR, pDepthStencilAttachment}

instance Offset "preserveAttachmentCount" VkSubpassDescription2KHR where
  rawOffset = #{offset VkSubpassDescription2KHR, preserveAttachmentCount}

instance Offset "pPreserveAttachments" VkSubpassDescription2KHR where
  rawOffset = #{offset VkSubpassDescription2KHR, pPreserveAttachments}

#else

module Vulkan.Types.Struct.VkSubpassDescription2KHR where

#endif