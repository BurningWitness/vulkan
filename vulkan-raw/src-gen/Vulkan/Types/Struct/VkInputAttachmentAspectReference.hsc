{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkInputAttachmentAspectReference where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlags



data {-# CTYPE "vulkan/vulkan.h" "VkInputAttachmentAspectReference" #-} VkInputAttachmentAspectReference =
       VkInputAttachmentAspectReference
         { subpass :: #{type uint32_t}
         , inputAttachmentIndex :: #{type uint32_t}
         , aspectMask :: VkImageAspectFlags
         }

instance Storable VkInputAttachmentAspectReference where
  sizeOf    _ = #{size      struct VkInputAttachmentAspectReference}
  alignment _ = #{alignment struct VkInputAttachmentAspectReference}

  peek ptr = 
    VkInputAttachmentAspectReference
       <$> peek (offset @"subpass" ptr)
       <*> peek (offset @"inputAttachmentIndex" ptr)
       <*> peek (offset @"aspectMask" ptr)

  poke ptr val = do
    pokeField @"subpass" ptr val
    pokeField @"inputAttachmentIndex" ptr val
    pokeField @"aspectMask" ptr val

instance Offset "subpass" VkInputAttachmentAspectReference where
  rawOffset = #{offset struct VkInputAttachmentAspectReference, subpass}

instance Offset "inputAttachmentIndex" VkInputAttachmentAspectReference where
  rawOffset = #{offset struct VkInputAttachmentAspectReference, inputAttachmentIndex}

instance Offset "aspectMask" VkInputAttachmentAspectReference where
  rawOffset = #{offset struct VkInputAttachmentAspectReference, aspectMask}

#else

module Vulkan.Types.Struct.VkInputAttachmentAspectReference where

#endif