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
  sizeOf    _ = #{size      struct VkDeviceDiagnosticsConfigCreateInfoNV}
  alignment _ = #{alignment struct VkDeviceDiagnosticsConfigCreateInfoNV}

  peek ptr = 
    VkDeviceDiagnosticsConfigCreateInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkDeviceDiagnosticsConfigCreateInfoNV where
  rawOffset = #{offset struct VkDeviceDiagnosticsConfigCreateInfoNV, sType}

instance Offset "pNext" VkDeviceDiagnosticsConfigCreateInfoNV where
  rawOffset = #{offset struct VkDeviceDiagnosticsConfigCreateInfoNV, pNext}

instance Offset "flags" VkDeviceDiagnosticsConfigCreateInfoNV where
  rawOffset = #{offset struct VkDeviceDiagnosticsConfigCreateInfoNV, flags}

#else

module Vulkan.Types.Struct.VkDeviceDiagnosticsConfigCreateInfoNV where

#endif