{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkAttachmentReferenceStencilLayout where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAttachmentReferenceStencilLayout" #-} VkAttachmentReferenceStencilLayout =
       VkAttachmentReferenceStencilLayout
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stencilLayout :: VkImageLayout
         }

instance Storable VkAttachmentReferenceStencilLayout where
  sizeOf    _ = #{size      struct VkAttachmentReferenceStencilLayout}
  alignment _ = #{alignment struct VkAttachmentReferenceStencilLayout}

  peek ptr = 
    VkAttachmentReferenceStencilLayout
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"stencilLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stencilLayout" ptr val

instance Offset "sType" VkAttachmentReferenceStencilLayout where
  rawOffset = #{offset struct VkAttachmentReferenceStencilLayout, sType}

instance Offset "pNext" VkAttachmentReferenceStencilLayout where
  rawOffset = #{offset struct VkAttachmentReferenceStencilLayout, pNext}

instance Offset "stencilLayout" VkAttachmentReferenceStencilLayout where
  rawOffset = #{offset struct VkAttachmentReferenceStencilLayout, stencilLayout}

#else

module Vulkan.Types.Struct.VkAttachmentReferenceStencilLayout where

#endif