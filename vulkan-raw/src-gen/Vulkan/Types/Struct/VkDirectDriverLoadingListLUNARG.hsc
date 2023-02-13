{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_LUNARG_direct_driver_loading

module Vulkan.Types.Struct.VkDirectDriverLoadingListLUNARG where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDirectDriverLoadingModeLUNARG
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDirectDriverLoadingInfoLUNARG



data {-# CTYPE "vulkan/vulkan.h" "VkDirectDriverLoadingListLUNARG" #-} VkDirectDriverLoadingListLUNARG =
       VkDirectDriverLoadingListLUNARG
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , mode :: VkDirectDriverLoadingModeLUNARG
         , driverCount :: #{type uint32_t}
         , pDrivers :: Ptr VkDirectDriverLoadingInfoLUNARG
         }

instance Storable VkDirectDriverLoadingListLUNARG where
  sizeOf    _ = #{size      VkDirectDriverLoadingListLUNARG}
  alignment _ = #{alignment VkDirectDriverLoadingListLUNARG}

  peek ptr = 
    VkDirectDriverLoadingListLUNARG
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"mode" ptr)
       <*> peek (offset @"driverCount" ptr)
       <*> peek (offset @"pDrivers" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"mode" ptr val
    pokeField @"driverCount" ptr val
    pokeField @"pDrivers" ptr val

instance Offset "sType" VkDirectDriverLoadingListLUNARG where
  rawOffset = #{offset VkDirectDriverLoadingListLUNARG, sType}

instance Offset "pNext" VkDirectDriverLoadingListLUNARG where
  rawOffset = #{offset VkDirectDriverLoadingListLUNARG, pNext}

instance Offset "mode" VkDirectDriverLoadingListLUNARG where
  rawOffset = #{offset VkDirectDriverLoadingListLUNARG, mode}

instance Offset "driverCount" VkDirectDriverLoadingListLUNARG where
  rawOffset = #{offset VkDirectDriverLoadingListLUNARG, driverCount}

instance Offset "pDrivers" VkDirectDriverLoadingListLUNARG where
  rawOffset = #{offset VkDirectDriverLoadingListLUNARG, pDrivers}

#else

module Vulkan.Types.Struct.VkDirectDriverLoadingListLUNARG where

#endif