{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering

module Vulkan.Types.Struct.VkRenderingAttachmentInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAttachmentLoadOp
import Vulkan.Types.Enum.VkAttachmentStoreOp
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkResolveModeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Union.VkClearValue



data {-# CTYPE "vulkan/vulkan.h" "VkRenderingAttachmentInfoKHR" #-} VkRenderingAttachmentInfoKHR =
       VkRenderingAttachmentInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageView :: VkImageView
         , imageLayout :: VkImageLayout
         , resolveMode :: VkResolveModeFlagBits
         , resolveImageView :: VkImageView
         , resolveImageLayout :: VkImageLayout
         , loadOp :: VkAttachmentLoadOp
         , storeOp :: VkAttachmentStoreOp
         , clearValue :: VkClearValue
         }

instance Storable VkRenderingAttachmentInfoKHR where
  sizeOf    _ = #{size      VkRenderingAttachmentInfoKHR}
  alignment _ = #{alignment VkRenderingAttachmentInfoKHR}

  peek ptr = 
    VkRenderingAttachmentInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"imageView" ptr)
       <*> peek (offset @"imageLayout" ptr)
       <*> peek (offset @"resolveMode" ptr)
       <*> peek (offset @"resolveImageView" ptr)
       <*> peek (offset @"resolveImageLayout" ptr)
       <*> peek (offset @"loadOp" ptr)
       <*> peek (offset @"storeOp" ptr)
       <*> peek (offset @"clearValue" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageView" ptr val
    pokeField @"imageLayout" ptr val
    pokeField @"resolveMode" ptr val
    pokeField @"resolveImageView" ptr val
    pokeField @"resolveImageLayout" ptr val
    pokeField @"loadOp" ptr val
    pokeField @"storeOp" ptr val
    pokeField @"clearValue" ptr val

instance Offset "sType" VkRenderingAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingAttachmentInfoKHR, sType}

instance Offset "pNext" VkRenderingAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingAttachmentInfoKHR, pNext}

instance Offset "imageView" VkRenderingAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingAttachmentInfoKHR, imageView}

instance Offset "imageLayout" VkRenderingAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingAttachmentInfoKHR, imageLayout}

instance Offset "resolveMode" VkRenderingAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingAttachmentInfoKHR, resolveMode}

instance Offset "resolveImageView" VkRenderingAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingAttachmentInfoKHR, resolveImageView}

instance Offset "resolveImageLayout" VkRenderingAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingAttachmentInfoKHR, resolveImageLayout}

instance Offset "loadOp" VkRenderingAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingAttachmentInfoKHR, loadOp}

instance Offset "storeOp" VkRenderingAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingAttachmentInfoKHR, storeOp}

instance Offset "clearValue" VkRenderingAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingAttachmentInfoKHR, clearValue}

#else

module Vulkan.Types.Struct.VkRenderingAttachmentInfoKHR where

#endif