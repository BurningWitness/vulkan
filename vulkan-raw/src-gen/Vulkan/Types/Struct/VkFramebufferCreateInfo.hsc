{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkFramebufferCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFramebufferCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkFramebufferCreateInfo" #-} VkFramebufferCreateInfo =
       VkFramebufferCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkFramebufferCreateFlags
         , renderPass :: VkRenderPass
         , attachmentCount :: #{type uint32_t}
         , pAttachments :: Ptr VkImageView
         , width :: #{type uint32_t}
         , height :: #{type uint32_t}
         , layers :: #{type uint32_t}
         }

instance Storable VkFramebufferCreateInfo where
  sizeOf    _ = #{size      VkFramebufferCreateInfo}
  alignment _ = #{alignment VkFramebufferCreateInfo}

  peek ptr = 
    VkFramebufferCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"renderPass" ptr)
       <*> peek (offset @"attachmentCount" ptr)
       <*> peek (offset @"pAttachments" ptr)
       <*> peek (offset @"width" ptr)
       <*> peek (offset @"height" ptr)
       <*> peek (offset @"layers" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"renderPass" ptr val
    pokeField @"attachmentCount" ptr val
    pokeField @"pAttachments" ptr val
    pokeField @"width" ptr val
    pokeField @"height" ptr val
    pokeField @"layers" ptr val

instance Offset "sType" VkFramebufferCreateInfo where
  rawOffset = #{offset VkFramebufferCreateInfo, sType}

instance Offset "pNext" VkFramebufferCreateInfo where
  rawOffset = #{offset VkFramebufferCreateInfo, pNext}

instance Offset "flags" VkFramebufferCreateInfo where
  rawOffset = #{offset VkFramebufferCreateInfo, flags}

instance Offset "renderPass" VkFramebufferCreateInfo where
  rawOffset = #{offset VkFramebufferCreateInfo, renderPass}

instance Offset "attachmentCount" VkFramebufferCreateInfo where
  rawOffset = #{offset VkFramebufferCreateInfo, attachmentCount}

instance Offset "pAttachments" VkFramebufferCreateInfo where
  rawOffset = #{offset VkFramebufferCreateInfo, pAttachments}

instance Offset "width" VkFramebufferCreateInfo where
  rawOffset = #{offset VkFramebufferCreateInfo, width}

instance Offset "height" VkFramebufferCreateInfo where
  rawOffset = #{offset VkFramebufferCreateInfo, height}

instance Offset "layers" VkFramebufferCreateInfo where
  rawOffset = #{offset VkFramebufferCreateInfo, layers}