{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_imageless_framebuffer

module Vulkan.Types.Struct.VkFramebufferAttachmentsCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkFramebufferAttachmentImageInfo



data {-# CTYPE "vulkan/vulkan.h" "VkFramebufferAttachmentsCreateInfoKHR" #-} VkFramebufferAttachmentsCreateInfoKHR =
       VkFramebufferAttachmentsCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , attachmentImageInfoCount :: #{type uint32_t}
         , pAttachmentImageInfos :: Ptr VkFramebufferAttachmentImageInfo
         }

instance Storable VkFramebufferAttachmentsCreateInfoKHR where
  sizeOf    _ = #{size      VkFramebufferAttachmentsCreateInfoKHR}
  alignment _ = #{alignment VkFramebufferAttachmentsCreateInfoKHR}

  peek ptr = 
    VkFramebufferAttachmentsCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"attachmentImageInfoCount" ptr)
       <*> peek (offset @"pAttachmentImageInfos" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"attachmentImageInfoCount" ptr val
    pokeField @"pAttachmentImageInfos" ptr val

instance Offset "sType" VkFramebufferAttachmentsCreateInfoKHR where
  rawOffset = #{offset VkFramebufferAttachmentsCreateInfoKHR, sType}

instance Offset "pNext" VkFramebufferAttachmentsCreateInfoKHR where
  rawOffset = #{offset VkFramebufferAttachmentsCreateInfoKHR, pNext}

instance Offset "attachmentImageInfoCount" VkFramebufferAttachmentsCreateInfoKHR where
  rawOffset = #{offset VkFramebufferAttachmentsCreateInfoKHR, attachmentImageInfoCount}

instance Offset "pAttachmentImageInfos" VkFramebufferAttachmentsCreateInfoKHR where
  rawOffset = #{offset VkFramebufferAttachmentsCreateInfoKHR, pAttachmentImageInfos}

#else

module Vulkan.Types.Struct.VkFramebufferAttachmentsCreateInfoKHR where

#endif