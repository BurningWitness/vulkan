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

module Vulkan.Types.Struct.VkExportMemoryAllocateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagsNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportMemoryAllocateInfoNV" #-} VkExportMemoryAllocateInfoNV =
       VkExportMemoryAllocateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleTypes :: VkExternalMemoryHandleTypeFlagsNV
         }

instance Storable VkExportMemoryAllocateInfoNV where
  sizeOf    _ = #{size      VkExportMemoryAllocateInfoNV}
  alignment _ = #{alignment VkExportMemoryAllocateInfoNV}

  peek ptr = 
    VkExportMemoryAllocateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleTypes" ptr val

instance Offset "sType" VkExportMemoryAllocateInfoNV where
  rawOffset = #{offset VkExportMemoryAllocateInfoNV, sType}

instance Offset "pNext" VkExportMemoryAllocateInfoNV where
  rawOffset = #{offset VkExportMemoryAllocateInfoNV, pNext}

instance Offset "handleTypes" VkExportMemoryAllocateInfoNV where
  rawOffset = #{offset VkExportMemoryAllocateInfoNV, handleTypes}

#else

module Vulkan.Types.Struct.VkExportMemoryAllocateInfoNV where

#endif