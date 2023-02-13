{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkAttachmentReference where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout



data {-# CTYPE "vulkan/vulkan.h" "VkAttachmentReference" #-} VkAttachmentReference =
       VkAttachmentReference
         { attachment :: #{type uint32_t}
         , layout :: VkImageLayout
         }

instance Storable VkAttachmentReference where
  sizeOf    _ = #{size      VkAttachmentReference}
  alignment _ = #{alignment VkAttachmentReference}

  peek ptr = 
    VkAttachmentReference
       <$> peek (offset @"attachment" ptr)
       <*> peek (offset @"layout" ptr)

  poke ptr val = do
    pokeField @"attachment" ptr val
    pokeField @"layout" ptr val

instance Offset "attachment" VkAttachmentReference where
  rawOffset = #{offset VkAttachmentReference, attachment}

instance Offset "layout" VkAttachmentReference where
  rawOffset = #{offset VkAttachmentReference, layout}