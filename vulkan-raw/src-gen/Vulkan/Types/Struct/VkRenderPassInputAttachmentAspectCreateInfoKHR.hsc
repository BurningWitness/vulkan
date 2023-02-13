{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance2

module Vulkan.Types.Struct.VkRenderPassInputAttachmentAspectCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkInputAttachmentAspectReference



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassInputAttachmentAspectCreateInfoKHR" #-} VkRenderPassInputAttachmentAspectCreateInfoKHR =
       VkRenderPassInputAttachmentAspectCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , aspectReferenceCount :: #{type uint32_t}
         , pAspectReferences :: Ptr VkInputAttachmentAspectReference
         }

instance Storable VkRenderPassInputAttachmentAspectCreateInfoKHR where
  sizeOf    _ = #{size      VkRenderPassInputAttachmentAspectCreateInfoKHR}
  alignment _ = #{alignment VkRenderPassInputAttachmentAspectCreateInfoKHR}

  peek ptr = 
    VkRenderPassInputAttachmentAspectCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"aspectReferenceCount" ptr)
       <*> peek (offset @"pAspectReferences" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"aspectReferenceCount" ptr val
    pokeField @"pAspectReferences" ptr val

instance Offset "sType" VkRenderPassInputAttachmentAspectCreateInfoKHR where
  rawOffset = #{offset VkRenderPassInputAttachmentAspectCreateInfoKHR, sType}

instance Offset "pNext" VkRenderPassInputAttachmentAspectCreateInfoKHR where
  rawOffset = #{offset VkRenderPassInputAttachmentAspectCreateInfoKHR, pNext}

instance Offset "aspectReferenceCount" VkRenderPassInputAttachmentAspectCreateInfoKHR where
  rawOffset = #{offset VkRenderPassInputAttachmentAspectCreateInfoKHR, aspectReferenceCount}

instance Offset "pAspectReferences" VkRenderPassInputAttachmentAspectCreateInfoKHR where
  rawOffset = #{offset VkRenderPassInputAttachmentAspectCreateInfoKHR, pAspectReferences}

#else

module Vulkan.Types.Struct.VkRenderPassInputAttachmentAspectCreateInfoKHR where

#endif