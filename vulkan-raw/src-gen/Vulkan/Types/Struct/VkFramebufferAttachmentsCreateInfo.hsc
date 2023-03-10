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

module Vulkan.Types.Struct.VkFramebufferAttachmentsCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkFramebufferAttachmentImageInfo



data {-# CTYPE "vulkan/vulkan.h" "VkFramebufferAttachmentsCreateInfo" #-} VkFramebufferAttachmentsCreateInfo =
       VkFramebufferAttachmentsCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , attachmentImageInfoCount :: #{type uint32_t}
         , pAttachmentImageInfos :: Ptr VkFramebufferAttachmentImageInfo
         }

instance Storable VkFramebufferAttachmentsCreateInfo where
  sizeOf    _ = #{size      VkFramebufferAttachmentsCreateInfo}
  alignment _ = #{alignment VkFramebufferAttachmentsCreateInfo}

  peek ptr = 
    VkFramebufferAttachmentsCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"attachmentImageInfoCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pAttachmentImageInfos" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"attachmentImageInfoCount" ptr val
    pokeField @"pAttachmentImageInfos" ptr val

instance Offset "sType" VkFramebufferAttachmentsCreateInfo where
  rawOffset = #{offset VkFramebufferAttachmentsCreateInfo, sType}

instance Offset "pNext" VkFramebufferAttachmentsCreateInfo where
  rawOffset = #{offset VkFramebufferAttachmentsCreateInfo, pNext}

instance Offset "attachmentImageInfoCount" VkFramebufferAttachmentsCreateInfo where
  rawOffset = #{offset VkFramebufferAttachmentsCreateInfo, attachmentImageInfoCount}

instance Offset "pAttachmentImageInfos" VkFramebufferAttachmentsCreateInfo where
  rawOffset = #{offset VkFramebufferAttachmentsCreateInfo, pAttachmentImageInfos}

#else

module Vulkan.Types.Struct.VkFramebufferAttachmentsCreateInfo where

#endif