{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_external_memory_win32

module Vulkan.Types.Struct.VkExportMemoryWin32HandleInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportMemoryWin32HandleInfoNV" #-} VkExportMemoryWin32HandleInfoNV =
       VkExportMemoryWin32HandleInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pAttributes :: Ptr SECURITY_ATTRIBUTES
         , dwAccess :: DWORD
         }

instance Storable VkExportMemoryWin32HandleInfoNV where
  sizeOf    _ = #{size      VkExportMemoryWin32HandleInfoNV}
  alignment _ = #{alignment VkExportMemoryWin32HandleInfoNV}

  peek ptr = 
    VkExportMemoryWin32HandleInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pAttributes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dwAccess" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pAttributes" ptr val
    pokeField @"dwAccess" ptr val

instance Offset "sType" VkExportMemoryWin32HandleInfoNV where
  rawOffset = #{offset VkExportMemoryWin32HandleInfoNV, sType}

instance Offset "pNext" VkExportMemoryWin32HandleInfoNV where
  rawOffset = #{offset VkExportMemoryWin32HandleInfoNV, pNext}

instance Offset "pAttributes" VkExportMemoryWin32HandleInfoNV where
  rawOffset = #{offset VkExportMemoryWin32HandleInfoNV, pAttributes}

instance Offset "dwAccess" VkExportMemoryWin32HandleInfoNV where
  rawOffset = #{offset VkExportMemoryWin32HandleInfoNV, dwAccess}

#else

module Vulkan.Types.Struct.VkExportMemoryWin32HandleInfoNV where

#endif