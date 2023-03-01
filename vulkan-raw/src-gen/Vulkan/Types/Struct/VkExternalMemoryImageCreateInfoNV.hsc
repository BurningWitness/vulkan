{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkExternalMemoryImageCreateInfoNV}
  alignment _ = #{alignment VkExternalMemoryImageCreateInfoNV}

  peek ptr = 
    VkExternalMemoryImageCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleTypes" ptr val

instance Offset "sType" VkExternalMemoryImageCreateInfoNV where
  rawOffset = #{offset VkExternalMemoryImageCreateInfoNV, sType}

instance Offset "pNext" VkExternalMemoryImageCreateInfoNV where
  rawOffset = #{offset VkExternalMemoryImageCreateInfoNV, pNext}

instance Offset "handleTypes" VkExternalMemoryImageCreateInfoNV where
  rawOffset = #{offset VkExternalMemoryImageCreateInfoNV, handleTypes}

#else

module Vulkan.Types.Struct.VkExternalMemoryImageCreateInfoNV where

#endif