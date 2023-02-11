{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_external_memory

module Vulkan.Types.Struct.VkExternalMemoryImageCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagsNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExternalMemoryImageCreateInfoNV" #-} VkExternalMemoryImageCreateInfoNV =
       VkExternalMemoryImageCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleTypes :: VkExternalMemoryHandleTypeFlagsNV
         }

instance Storable VkExternalMemoryImageCreateInfoNV where
  sizeOf    _ = #{size      struct VkExternalMemoryImageCreateInfoNV}
  alignment _ = #{alignment struct VkExternalMemoryImageCreateInfoNV}

  peek ptr = 
    VkExternalMemoryImageCreateInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"handleTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleTypes" ptr val

instance Offset "sType" VkExternalMemoryImageCreateInfoNV where
  rawOffset = #{offset struct VkExternalMemoryImageCreateInfoNV, sType}

instance Offset "pNext" VkExternalMemoryImageCreateInfoNV where
  rawOffset = #{offset struct VkExternalMemoryImageCreateInfoNV, pNext}

instance Offset "handleTypes" VkExternalMemoryImageCreateInfoNV where
  rawOffset = #{offset struct VkExternalMemoryImageCreateInfoNV, handleTypes}

#else

module Vulkan.Types.Struct.VkExternalMemoryImageCreateInfoNV where

#endif