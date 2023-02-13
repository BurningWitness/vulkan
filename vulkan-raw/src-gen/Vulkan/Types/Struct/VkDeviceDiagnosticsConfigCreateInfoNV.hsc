{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_diagnostics_config

module Vulkan.Types.Struct.VkDeviceDiagnosticsConfigCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDeviceDiagnosticsConfigFlagsNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceDiagnosticsConfigCreateInfoNV" #-} VkDeviceDiagnosticsConfigCreateInfoNV =
       VkDeviceDiagnosticsConfigCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDeviceDiagnosticsConfigFlagsNV
         }

instance Storable VkDeviceDiagnosticsConfigCreateInfoNV where
  sizeOf    _ = #{size      VkDeviceDiagnosticsConfigCreateInfoNV}
  alignment _ = #{alignment VkDeviceDiagnosticsConfigCreateInfoNV}

  peek ptr = 
    VkDeviceDiagnosticsConfigCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkDeviceDiagnosticsConfigCreateInfoNV where
  rawOffset = #{offset VkDeviceDiagnosticsConfigCreateInfoNV, sType}

instance Offset "pNext" VkDeviceDiagnosticsConfigCreateInfoNV where
  rawOffset = #{offset VkDeviceDiagnosticsConfigCreateInfoNV, pNext}

instance Offset "flags" VkDeviceDiagnosticsConfigCreateInfoNV where
  rawOffset = #{offset VkDeviceDiagnosticsConfigCreateInfoNV, flags}

#else

module Vulkan.Types.Struct.VkDeviceDiagnosticsConfigCreateInfoNV where

#endif