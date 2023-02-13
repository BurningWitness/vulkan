{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_separate_depth_stencil_layouts

module Vulkan.Types.Struct.VkAttachmentReferenceStencilLayoutKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAttachmentReferenceStencilLayoutKHR" #-} VkAttachmentReferenceStencilLayoutKHR =
       VkAttachmentReferenceStencilLayoutKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stencilLayout :: VkImageLayout
         }

instance Storable VkAttachmentReferenceStencilLayoutKHR where
  sizeOf    _ = #{size      VkAttachmentReferenceStencilLayoutKHR}
  alignment _ = #{alignment VkAttachmentReferenceStencilLayoutKHR}

  peek ptr = 
    VkAttachmentReferenceStencilLayoutKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"stencilLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stencilLayout" ptr val

instance Offset "sType" VkAttachmentReferenceStencilLayoutKHR where
  rawOffset = #{offset VkAttachmentReferenceStencilLayoutKHR, sType}

instance Offset "pNext" VkAttachmentReferenceStencilLayoutKHR where
  rawOffset = #{offset VkAttachmentReferenceStencilLayoutKHR, pNext}

instance Offset "stencilLayout" VkAttachmentReferenceStencilLayoutKHR where
  rawOffset = #{offset VkAttachmentReferenceStencilLayoutKHR, stencilLayout}

#else

module Vulkan.Types.Struct.VkAttachmentReferenceStencilLayoutKHR where

#endif