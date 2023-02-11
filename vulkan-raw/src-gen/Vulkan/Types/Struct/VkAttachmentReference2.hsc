{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkAttachmentReference2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlags
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAttachmentReference2" #-} VkAttachmentReference2 =
       VkAttachmentReference2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , attachment :: #{type uint32_t}
         , layout :: VkImageLayout
         , aspectMask :: VkImageAspectFlags
         }

instance Storable VkAttachmentReference2 where
  sizeOf    _ = #{size      struct VkAttachmentReference2}
  alignment _ = #{alignment struct VkAttachmentReference2}

  peek ptr = 
    VkAttachmentReference2
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

instance Offset "sType" VkAttachmentReference2 where
  rawOffset = #{offset struct VkAttachmentReference2, sType}

instance Offset "pNext" VkAttachmentReference2 where
  rawOffset = #{offset struct VkAttachmentReference2, pNext}

instance Offset "attachment" VkAttachmentReference2 where
  rawOffset = #{offset struct VkAttachmentReference2, attachment}

instance Offset "layout" VkAttachmentReference2 where
  rawOffset = #{offset struct VkAttachmentReference2, layout}

instance Offset "aspectMask" VkAttachmentReference2 where
  rawOffset = #{offset struct VkAttachmentReference2, aspectMask}

#else

module Vulkan.Types.Struct.VkAttachmentReference2 where

#endif