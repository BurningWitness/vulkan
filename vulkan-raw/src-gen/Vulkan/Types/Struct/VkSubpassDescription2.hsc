{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkSubpassDescription2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSubpassDescriptionFlags
import Vulkan.Types.Struct.VkAttachmentReference2



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassDescription2" #-} VkSubpassDescription2 =
       VkSubpassDescription2
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

instance Storable VkSubpassDescription2 where
  sizeOf    _ = #{size      VkSubpassDescription2}
  alignment _ = #{alignment VkSubpassDescription2}

  peek ptr = 
    VkSubpassDescription2
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineBindPoint" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"viewMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"inputAttachmentCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pInputAttachments" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"colorAttachmentCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pColorAttachments" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pResolveAttachments" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDepthStencilAttachment" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"preserveAttachmentCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pPreserveAttachments" ptr)

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

instance Offset "sType" VkSubpassDescription2 where
  rawOffset = #{offset VkSubpassDescription2, sType}

instance Offset "pNext" VkSubpassDescription2 where
  rawOffset = #{offset VkSubpassDescription2, pNext}

instance Offset "flags" VkSubpassDescription2 where
  rawOffset = #{offset VkSubpassDescription2, flags}

instance Offset "pipelineBindPoint" VkSubpassDescription2 where
  rawOffset = #{offset VkSubpassDescription2, pipelineBindPoint}

instance Offset "viewMask" VkSubpassDescription2 where
  rawOffset = #{offset VkSubpassDescription2, viewMask}

instance Offset "inputAttachmentCount" VkSubpassDescription2 where
  rawOffset = #{offset VkSubpassDescription2, inputAttachmentCount}

instance Offset "pInputAttachments" VkSubpassDescription2 where
  rawOffset = #{offset VkSubpassDescription2, pInputAttachments}

instance Offset "colorAttachmentCount" VkSubpassDescription2 where
  rawOffset = #{offset VkSubpassDescription2, colorAttachmentCount}

instance Offset "pColorAttachments" VkSubpassDescription2 where
  rawOffset = #{offset VkSubpassDescription2, pColorAttachments}

instance Offset "pResolveAttachments" VkSubpassDescription2 where
  rawOffset = #{offset VkSubpassDescription2, pResolveAttachments}

instance Offset "pDepthStencilAttachment" VkSubpassDescription2 where
  rawOffset = #{offset VkSubpassDescription2, pDepthStencilAttachment}

instance Offset "preserveAttachmentCount" VkSubpassDescription2 where
  rawOffset = #{offset VkSubpassDescription2, preserveAttachmentCount}

instance Offset "pPreserveAttachments" VkSubpassDescription2 where
  rawOffset = #{offset VkSubpassDescription2, pPreserveAttachments}

#else

module Vulkan.Types.Struct.VkSubpassDescription2 where

#endif