{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_win32

module Vulkan.Types.Struct.VkExportFenceWin32HandleInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportFenceWin32HandleInfoKHR" #-} VkExportFenceWin32HandleInfoKHR =
       VkExportFenceWin32HandleInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pAttributes :: Ptr SECURITY_ATTRIBUTES
         , dwAccess :: DWORD
         , name :: LPCWSTR
         }

instance Storable VkExportFenceWin32HandleInfoKHR where
  sizeOf    _ = #{size      VkExportFenceWin32HandleInfoKHR}
  alignment _ = #{alignment VkExportFenceWin32HandleInfoKHR}

  peek ptr = 
    VkExportFenceWin32HandleInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pAttributes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dwAccess" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"name" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pAttributes" ptr val
    pokeField @"dwAccess" ptr val
    pokeField @"name" ptr val

instance Offset "sType" VkExportFenceWin32HandleInfoKHR where
  rawOffset = #{offset VkExportFenceWin32HandleInfoKHR, sType}

instance Offset "pNext" VkExportFenceWin32HandleInfoKHR where
  rawOffset = #{offset VkExportFenceWin32HandleInfoKHR, pNext}

instance Offset "pAttributes" VkExportFenceWin32HandleInfoKHR where
  rawOffset = #{offset VkExportFenceWin32HandleInfoKHR, pAttributes}

instance Offset "dwAccess" VkExportFenceWin32HandleInfoKHR where
  rawOffset = #{offset VkExportFenceWin32HandleInfoKHR, dwAccess}

instance Offset "name" VkExportFenceWin32HandleInfoKHR where
  rawOffset = #{offset VkExportFenceWin32HandleInfoKHR, name}

#else

module Vulkan.Types.Struct.VkExportFenceWin32HandleInfoKHR where

#endif