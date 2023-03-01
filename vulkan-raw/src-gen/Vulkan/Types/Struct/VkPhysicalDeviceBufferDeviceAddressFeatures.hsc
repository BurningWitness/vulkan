{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceBufferDeviceAddressFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceBufferDeviceAddressFeatures" #-} VkPhysicalDeviceBufferDeviceAddressFeatures =
       VkPhysicalDeviceBufferDeviceAddressFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , bufferDeviceAddress :: VkBool32
         , bufferDeviceAddressCaptureReplay :: VkBool32
         , bufferDeviceAddressMultiDevice :: VkBool32
         }

instance Storable VkPhysicalDeviceBufferDeviceAddressFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceBufferDeviceAddressFeatures}
  alignment _ = #{alignment VkPhysicalDeviceBufferDeviceAddressFeatures}

  peek ptr = 
    VkPhysicalDeviceBufferDeviceAddressFeatures
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferDeviceAddress" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferDeviceAddressCaptureReplay" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferDeviceAddressMultiDevice" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"bufferDeviceAddress" ptr val
    pokeField @"bufferDeviceAddressCaptureReplay" ptr val
    pokeField @"bufferDeviceAddressMultiDevice" ptr val

instance Offset "sType" VkPhysicalDeviceBufferDeviceAddressFeatures where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceBufferDeviceAddressFeatures where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeatures, pNext}

instance Offset "bufferDeviceAddress" VkPhysicalDeviceBufferDeviceAddressFeatures where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeatures, bufferDeviceAddress}

instance Offset "bufferDeviceAddressCaptureReplay" VkPhysicalDeviceBufferDeviceAddressFeatures where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeatures, bufferDeviceAddressCaptureReplay}

instance Offset "bufferDeviceAddressMultiDevice" VkPhysicalDeviceBufferDeviceAddressFeatures where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeatures, bufferDeviceAddressMultiDevice}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceBufferDeviceAddressFeatures where

#endif