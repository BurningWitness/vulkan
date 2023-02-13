{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance4

module Vulkan.Types.Struct.VkDeviceBufferMemoryRequirementsKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkBufferCreateInfo



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceBufferMemoryRequirementsKHR" #-} VkDeviceBufferMemoryRequirementsKHR =
       VkDeviceBufferMemoryRequirementsKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pCreateInfo :: Ptr VkBufferCreateInfo
         }

instance Storable VkDeviceBufferMemoryRequirementsKHR where
  sizeOf    _ = #{size      VkDeviceBufferMemoryRequirementsKHR}
  alignment _ = #{alignment VkDeviceBufferMemoryRequirementsKHR}

  peek ptr = 
    VkDeviceBufferMemoryRequirementsKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pCreateInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pCreateInfo" ptr val

instance Offset "sType" VkDeviceBufferMemoryRequirementsKHR where
  rawOffset = #{offset VkDeviceBufferMemoryRequirementsKHR, sType}

instance Offset "pNext" VkDeviceBufferMemoryRequirementsKHR where
  rawOffset = #{offset VkDeviceBufferMemoryRequirementsKHR, pNext}

instance Offset "pCreateInfo" VkDeviceBufferMemoryRequirementsKHR where
  rawOffset = #{offset VkDeviceBufferMemoryRequirementsKHR, pCreateInfo}

#else

module Vulkan.Types.Struct.VkDeviceBufferMemoryRequirementsKHR where

#endif