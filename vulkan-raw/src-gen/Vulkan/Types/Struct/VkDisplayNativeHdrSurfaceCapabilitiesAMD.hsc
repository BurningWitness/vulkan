{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_AMD_display_native_hdr

module Vulkan.Types.Struct.VkDisplayNativeHdrSurfaceCapabilitiesAMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayNativeHdrSurfaceCapabilitiesAMD" #-} VkDisplayNativeHdrSurfaceCapabilitiesAMD =
       VkDisplayNativeHdrSurfaceCapabilitiesAMD
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , localDimmingSupport :: VkBool32
         }

instance Storable VkDisplayNativeHdrSurfaceCapabilitiesAMD where
  sizeOf    _ = #{size      VkDisplayNativeHdrSurfaceCapabilitiesAMD}
  alignment _ = #{alignment VkDisplayNativeHdrSurfaceCapabilitiesAMD}

  peek ptr = 
    VkDisplayNativeHdrSurfaceCapabilitiesAMD
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"localDimmingSupport" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"localDimmingSupport" ptr val

instance Offset "sType" VkDisplayNativeHdrSurfaceCapabilitiesAMD where
  rawOffset = #{offset VkDisplayNativeHdrSurfaceCapabilitiesAMD, sType}

instance Offset "pNext" VkDisplayNativeHdrSurfaceCapabilitiesAMD where
  rawOffset = #{offset VkDisplayNativeHdrSurfaceCapabilitiesAMD, pNext}

instance Offset "localDimmingSupport" VkDisplayNativeHdrSurfaceCapabilitiesAMD where
  rawOffset = #{offset VkDisplayNativeHdrSurfaceCapabilitiesAMD, localDimmingSupport}

#else

module Vulkan.Types.Struct.VkDisplayNativeHdrSurfaceCapabilitiesAMD where

#endif