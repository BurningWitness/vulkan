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

module Vulkan.Types.Struct.VkSwapchainDisplayNativeHdrCreateInfoAMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSwapchainDisplayNativeHdrCreateInfoAMD" #-} VkSwapchainDisplayNativeHdrCreateInfoAMD =
       VkSwapchainDisplayNativeHdrCreateInfoAMD
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , localDimmingEnable :: VkBool32
         }

instance Storable VkSwapchainDisplayNativeHdrCreateInfoAMD where
  sizeOf    _ = #{size      VkSwapchainDisplayNativeHdrCreateInfoAMD}
  alignment _ = #{alignment VkSwapchainDisplayNativeHdrCreateInfoAMD}

  peek ptr = 
    VkSwapchainDisplayNativeHdrCreateInfoAMD
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"localDimmingEnable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"localDimmingEnable" ptr val

instance Offset "sType" VkSwapchainDisplayNativeHdrCreateInfoAMD where
  rawOffset = #{offset VkSwapchainDisplayNativeHdrCreateInfoAMD, sType}

instance Offset "pNext" VkSwapchainDisplayNativeHdrCreateInfoAMD where
  rawOffset = #{offset VkSwapchainDisplayNativeHdrCreateInfoAMD, pNext}

instance Offset "localDimmingEnable" VkSwapchainDisplayNativeHdrCreateInfoAMD where
  rawOffset = #{offset VkSwapchainDisplayNativeHdrCreateInfoAMD, localDimmingEnable}

#else

module Vulkan.Types.Struct.VkSwapchainDisplayNativeHdrCreateInfoAMD where

#endif