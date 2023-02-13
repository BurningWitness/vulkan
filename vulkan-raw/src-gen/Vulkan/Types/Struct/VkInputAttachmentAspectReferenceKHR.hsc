{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance2

module Vulkan.Types.Struct.VkInputAttachmentAspectReferenceKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlags



data {-# CTYPE "vulkan/vulkan.h" "VkInputAttachmentAspectReferenceKHR" #-} VkInputAttachmentAspectReferenceKHR =
       VkInputAttachmentAspectReferenceKHR
         { subpass :: #{type uint32_t}
         , inputAttachmentIndex :: #{type uint32_t}
         , aspectMask :: VkImageAspectFlags
         }

instance Storable VkInputAttachmentAspectReferenceKHR where
  sizeOf    _ = #{size      VkInputAttachmentAspectReferenceKHR}
  alignment _ = #{alignment VkInputAttachmentAspectReferenceKHR}

  peek ptr = 
    VkInputAttachmentAspectReferenceKHR
       <$> peek (Foreign.Storable.Offset.offset @"subpass" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"inputAttachmentIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"aspectMask" ptr)

  poke ptr val = do
    pokeField @"subpass" ptr val
    pokeField @"inputAttachmentIndex" ptr val
    pokeField @"aspectMask" ptr val

instance Offset "subpass" VkInputAttachmentAspectReferenceKHR where
  rawOffset = #{offset VkInputAttachmentAspectReferenceKHR, subpass}

instance Offset "inputAttachmentIndex" VkInputAttachmentAspectReferenceKHR where
  rawOffset = #{offset VkInputAttachmentAspectReferenceKHR, inputAttachmentIndex}

instance Offset "aspectMask" VkInputAttachmentAspectReferenceKHR where
  rawOffset = #{offset VkInputAttachmentAspectReferenceKHR, aspectMask}

#else

module Vulkan.Types.Struct.VkInputAttachmentAspectReferenceKHR where

#endif