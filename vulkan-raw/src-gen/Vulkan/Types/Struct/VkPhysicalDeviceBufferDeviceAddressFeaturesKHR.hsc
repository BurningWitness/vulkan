{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_buffer_device_address

module Vulkan.Types.Struct.VkPhysicalDeviceBufferDeviceAddressFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceBufferDeviceAddressFeaturesKHR" #-} VkPhysicalDeviceBufferDeviceAddressFeaturesKHR =
       VkPhysicalDeviceBufferDeviceAddressFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , bufferDeviceAddress :: VkBool32
         , bufferDeviceAddressCaptureReplay :: VkBool32
         , bufferDeviceAddressMultiDevice :: VkBool32
         }

instance Storable VkPhysicalDeviceBufferDeviceAddressFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceBufferDeviceAddressFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceBufferDeviceAddressFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceBufferDeviceAddressFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"bufferDeviceAddress" ptr)
       <*> peek (offset @"bufferDeviceAddressCaptureReplay" ptr)
       <*> peek (offset @"bufferDeviceAddressMultiDevice" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"bufferDeviceAddress" ptr val
    pokeField @"bufferDeviceAddressCaptureReplay" ptr val
    pokeField @"bufferDeviceAddressMultiDevice" ptr val

instance Offset "sType" VkPhysicalDeviceBufferDeviceAddressFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceBufferDeviceAddressFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeaturesKHR, pNext}

instance Offset "bufferDeviceAddress" VkPhysicalDeviceBufferDeviceAddressFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeaturesKHR, bufferDeviceAddress}

instance Offset "bufferDeviceAddressCaptureReplay" VkPhysicalDeviceBufferDeviceAddressFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeaturesKHR, bufferDeviceAddressCaptureReplay}

instance Offset "bufferDeviceAddressMultiDevice" VkPhysicalDeviceBufferDeviceAddressFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeaturesKHR, bufferDeviceAddressMultiDevice}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceBufferDeviceAddressFeaturesKHR where

#endif