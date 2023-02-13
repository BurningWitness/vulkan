{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkRenderPassAttachmentBeginInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassAttachmentBeginInfo" #-} VkRenderPassAttachmentBeginInfo =
       VkRenderPassAttachmentBeginInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , attachmentCount :: #{type uint32_t}
         , pAttachments :: Ptr VkImageView
         }

instance Storable VkRenderPassAttachmentBeginInfo where
  sizeOf    _ = #{size      VkRenderPassAttachmentBeginInfo}
  alignment _ = #{alignment VkRenderPassAttachmentBeginInfo}

  peek ptr = 
    VkRenderPassAttachmentBeginInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"attachmentCount" ptr)
       <*> peek (offset @"pAttachments" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"attachmentCount" ptr val
    pokeField @"pAttachments" ptr val

instance Offset "sType" VkRenderPassAttachmentBeginInfo where
  rawOffset = #{offset VkRenderPassAttachmentBeginInfo, sType}

instance Offset "pNext" VkRenderPassAttachmentBeginInfo where
  rawOffset = #{offset VkRenderPassAttachmentBeginInfo, pNext}

instance Offset "attachmentCount" VkRenderPassAttachmentBeginInfo where
  rawOffset = #{offset VkRenderPassAttachmentBeginInfo, attachmentCount}

instance Offset "pAttachments" VkRenderPassAttachmentBeginInfo where
  rawOffset = #{offset VkRenderPassAttachmentBeginInfo, pAttachments}

#else

module Vulkan.Types.Struct.VkRenderPassAttachmentBeginInfo where

#endif