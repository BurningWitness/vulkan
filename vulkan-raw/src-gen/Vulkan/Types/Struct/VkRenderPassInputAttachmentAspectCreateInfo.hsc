{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkRenderPassInputAttachmentAspectCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkInputAttachmentAspectReference



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassInputAttachmentAspectCreateInfo" #-} VkRenderPassInputAttachmentAspectCreateInfo =
       VkRenderPassInputAttachmentAspectCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , aspectReferenceCount :: #{type uint32_t}
         , pAspectReferences :: Ptr VkInputAttachmentAspectReference
         }

instance Storable VkRenderPassInputAttachmentAspectCreateInfo where
  sizeOf    _ = #{size      struct VkRenderPassInputAttachmentAspectCreateInfo}
  alignment _ = #{alignment struct VkRenderPassInputAttachmentAspectCreateInfo}

  peek ptr = 
    VkRenderPassInputAttachmentAspectCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"aspectReferenceCount" ptr)
       <*> peek (offset @"pAspectReferences" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"aspectReferenceCount" ptr val
    pokeField @"pAspectReferences" ptr val

instance Offset "sType" VkRenderPassInputAttachmentAspectCreateInfo where
  rawOffset = #{offset struct VkRenderPassInputAttachmentAspectCreateInfo, sType}

instance Offset "pNext" VkRenderPassInputAttachmentAspectCreateInfo where
  rawOffset = #{offset struct VkRenderPassInputAttachmentAspectCreateInfo, pNext}

instance Offset "aspectReferenceCount" VkRenderPassInputAttachmentAspectCreateInfo where
  rawOffset = #{offset struct VkRenderPassInputAttachmentAspectCreateInfo, aspectReferenceCount}

instance Offset "pAspectReferences" VkRenderPassInputAttachmentAspectCreateInfo where
  rawOffset = #{offset struct VkRenderPassInputAttachmentAspectCreateInfo, pAspectReferences}

#else

module Vulkan.Types.Struct.VkRenderPassInputAttachmentAspectCreateInfo where

#endif