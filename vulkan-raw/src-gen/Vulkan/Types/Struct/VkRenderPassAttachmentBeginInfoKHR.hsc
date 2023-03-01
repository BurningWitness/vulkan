{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_imageless_framebuffer

module Vulkan.Types.Struct.VkRenderPassAttachmentBeginInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassAttachmentBeginInfoKHR" #-} VkRenderPassAttachmentBeginInfoKHR =
       VkRenderPassAttachmentBeginInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , attachmentCount :: #{type uint32_t}
         , pAttachments :: Ptr VkImageView
         }

instance Storable VkRenderPassAttachmentBeginInfoKHR where
  sizeOf    _ = #{size      VkRenderPassAttachmentBeginInfoKHR}
  alignment _ = #{alignment VkRenderPassAttachmentBeginInfoKHR}

  peek ptr = 
    VkRenderPassAttachmentBeginInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"attachmentCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pAttachments" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"attachmentCount" ptr val
    pokeField @"pAttachments" ptr val

instance Offset "sType" VkRenderPassAttachmentBeginInfoKHR where
  rawOffset = #{offset VkRenderPassAttachmentBeginInfoKHR, sType}

instance Offset "pNext" VkRenderPassAttachmentBeginInfoKHR where
  rawOffset = #{offset VkRenderPassAttachmentBeginInfoKHR, pNext}

instance Offset "attachmentCount" VkRenderPassAttachmentBeginInfoKHR where
  rawOffset = #{offset VkRenderPassAttachmentBeginInfoKHR, attachmentCount}

instance Offset "pAttachments" VkRenderPassAttachmentBeginInfoKHR where
  rawOffset = #{offset VkRenderPassAttachmentBeginInfoKHR, pAttachments}

#else

module Vulkan.Types.Struct.VkRenderPassAttachmentBeginInfoKHR where

#endif