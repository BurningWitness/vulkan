{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Struct.VkAttachmentReference2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlags
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAttachmentReference2KHR" #-} VkAttachmentReference2KHR =
       VkAttachmentReference2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , attachment :: #{type uint32_t}
         , layout :: VkImageLayout
         , aspectMask :: VkImageAspectFlags
         }

instance Storable VkAttachmentReference2KHR where
  sizeOf    _ = #{size      VkAttachmentReference2KHR}
  alignment _ = #{alignment VkAttachmentReference2KHR}

  peek ptr = 
    VkAttachmentReference2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"attachment" ptr)
       <*> peek (offset @"layout" ptr)
       <*> peek (offset @"aspectMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"attachment" ptr val
    pokeField @"layout" ptr val
    pokeField @"aspectMask" ptr val

instance Offset "sType" VkAttachmentReference2KHR where
  rawOffset = #{offset VkAttachmentReference2KHR, sType}

instance Offset "pNext" VkAttachmentReference2KHR where
  rawOffset = #{offset VkAttachmentReference2KHR, pNext}

instance Offset "attachment" VkAttachmentReference2KHR where
  rawOffset = #{offset VkAttachmentReference2KHR, attachment}

instance Offset "layout" VkAttachmentReference2KHR where
  rawOffset = #{offset VkAttachmentReference2KHR, layout}

instance Offset "aspectMask" VkAttachmentReference2KHR where
  rawOffset = #{offset VkAttachmentReference2KHR, aspectMask}

#else

module Vulkan.Types.Struct.VkAttachmentReference2KHR where

#endif